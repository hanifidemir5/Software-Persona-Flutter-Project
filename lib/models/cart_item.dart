
import 'product.dart';

class CartItem {
  final String id;
  final Product product;
  int quantity;
  String? selectedSize;
  int? selectedColorIndex;

  CartItem({
    required this.id,
    required this.product,
    this.quantity = 1,
    this.selectedSize,
    this.selectedColorIndex,
  });

  double get total => product.price * quantity;
}
