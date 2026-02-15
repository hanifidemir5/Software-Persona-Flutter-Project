import 'package:flutter/material.dart';
import '../data/fake_data.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _query = '';
  List<Product> _results = [];

  void _search(String query) {
    setState(() {
      _query = query;
      if (query.isEmpty) {
        _results = [];
      } else {
        _results = FakeData.products
            .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Search products...',
            border: InputBorder.none,
            fillColor: Colors.transparent,
          ),
          onChanged: _search,
        ),
      ),
      body: _query.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.search, size: 80, color: Colors.grey),
                  const SizedBox(height: 16),
                  Text(
                    'Type to search',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            )
          : _results.isEmpty
          ? Center(
              child: Text(
                'No products found',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: _results.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: _results[index],
                  heroTag: '${_results[index].id}_search',
                );
              },
            ),
    );
  }
}
