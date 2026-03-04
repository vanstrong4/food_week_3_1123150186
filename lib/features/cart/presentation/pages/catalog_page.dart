import 'package:flutter/material.dart';
import 'package:food_catalog/core/constants/app_constants.dart';
import 'package:food_catalog/core/routes/app_router.dart';
import 'package:food_catalog/features/cart/domain/entities/product.dart';
import 'package:food_catalog/features/cart/presentation/widgets/add_button_widget.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(AppConstants.catalogTitle, style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: () => Navigator.pushNamed(context, AppRouter.cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            trailing: AddButtonWidget(product: products[index]),
          );
        },
      ),
    );
  }
}
