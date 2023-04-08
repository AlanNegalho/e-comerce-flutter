import 'package:ecomerce/widgets/product/product_card_widget.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.scrollDerection});
  final Axis scrollDerection;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrollDerection,
      children: const [
        ProductCard(
          titulo: "men's sweatshirt",
          descricao: 'sweatshirt',
          image: 'assets/product-10.jpeg',
          price: 150,
        ),
        ProductCard(
          titulo: 'iphone 14',
          descricao: 'apple',
          image: 'assets/product-1.jpeg',
          price: 755,
        ),
        ProductCard(
          titulo: 'Leather Wristwatch',
          descricao: 'Tag Heuer',
          image: 'assets/product-2.png',
          price: 450,
        ),
        ProductCard(
          titulo: 'Smart Bluetooth Speaker',
          descricao: 'Google Inc',
          image: 'assets/product-3.png',
          price: 900,
        ),
        ProductCard(
          titulo: 'product',
          descricao: 'product',
          image: 'assets/product-4.png',
          price: 100,
        ),
        ProductCard(
          titulo: 'Product',
          descricao: 'Product',
          image: 'assets/product-5.png',
          price: 200,
        ),
        ProductCard(
          titulo: 'Product',
          descricao: 'product',
          image: 'assets/product-8.png',
          price: 202,
        ),
        ProductCard(
          titulo: 'Product',
          descricao: 'product',
          image: 'assets/product-9.png',
          price: 308,
        ),
      ],
    );
  }
}
