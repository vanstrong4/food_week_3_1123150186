import 'package:flutter/material.dart';
import 'package:food_catalog/features/cart/domain/entities/product.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(id: '1', name: 'Coca Cola', price: '12000'),
      Product(id: '2', name: 'Fanta Strawberry', price: '12000'),
      Product(id: '3', name: 'Sprite', price: '12000'),
      Product(id: '4', name: 'Big Cola', price: '10000'),
    ];
    return const Placeholder();
  }
}
