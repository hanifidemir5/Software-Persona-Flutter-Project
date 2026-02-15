import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/fake_data.dart';
import '../models/category.dart';
import '../theme/app_colors.dart';
import '../widgets/category_chip.dart';
import '../widgets/product_card.dart';

class ProductListScreen extends StatefulWidget {
  final String? initialCategoryId;

  const ProductListScreen({super.key, this.initialCategoryId});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  String? _selectedCategoryId;

  @override
  void initState() {
    super.initState();
    _selectedCategoryId = widget.initialCategoryId;
  }

  @override
  Widget build(BuildContext context) {
    // Filter products
    final products = _selectedCategoryId == null
        ? FakeData.products
        : FakeData.products
              .where((p) => p.categoryId == _selectedCategoryId)
              .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        actions: [
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {
              // Show filter bottom sheet
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Categories
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: FakeData.categories.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CategoryChip(
                      category: Category(
                        id: 'all',
                        name: 'All',
                        icon: Icons.grid_view,
                      ),
                      isSelected: _selectedCategoryId == null,
                      onTap: () {
                        setState(() {
                          _selectedCategoryId = null;
                        });
                      },
                    ),
                  );
                }
                final cat = FakeData.categories[index - 1];
                return CategoryChip(
                  category: cat,
                  isSelected: _selectedCategoryId == cat.id,
                  onTap: () {
                    setState(() {
                      if (_selectedCategoryId == cat.id) {
                        _selectedCategoryId = null;
                      } else {
                        _selectedCategoryId = cat.id;
                      }
                    });
                  },
                );
              },
            ),
          ),

          // Product Grid
          Expanded(
            child: products.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.category_outlined,
                          size: 60,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'No products found',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: products[index],
                        heroTag: '${products[index].id}_catalog',
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
