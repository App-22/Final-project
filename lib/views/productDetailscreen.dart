import 'package:flutter/material.dart';
import '../models/productModel.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel product;

  const ProductDetailsScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(
              product.image,
              height: 250,
            ),

            const SizedBox(height: 20),

            Text(
              product.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              "\$${product.price}",
              style: const TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 20),

            Text(product.description),

            const SizedBox(height: 20),

            Text(product.category),

            const SizedBox(height: 10),

            Text(
              "⭐ ${product.rating.rate} (${product.rating.count})",
            ),
          ],
        ),
      ),
    );
  }
}