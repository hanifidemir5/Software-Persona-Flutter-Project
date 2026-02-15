
import 'package:flutter/material.dart';
import '../models/cart_item.dart';
import '../models/product.dart';

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => [..._items];

  int get itemCount => _items.length;

  double get totalAmount {
    var total = 0.0;
    for (var item in _items) {
      total += item.total;
    }
    return total;
  }

  void addItem(Product product, {int quantity = 1, String? size, int? colorIndex}) {
    // Check if item already exists with same variations
    final existingIndex = _items.indexWhere((item) => 
      item.product.id == product.id && 
      item.selectedSize == size && 
      item.selectedColorIndex == colorIndex
    );

    if (existingIndex >= 0) {
      _items[existingIndex].quantity += quantity;
    } else {
      _items.add(CartItem(
        id: DateTime.now().toString(),
        product: product,
        quantity: quantity,
        selectedSize: size,
        selectedColorIndex: colorIndex,
      ));
    }
    notifyListeners();
  }

  void removeItem(String id) {
    _items.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  void updateQuantity(String id, int quantity) {
    final index = _items.indexWhere((item) => item.id == id);
    if (index >= 0) {
      if (quantity > 0) {
        _items[index].quantity = quantity;
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
    }
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
