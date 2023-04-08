import 'package:flutter/material.dart';
import 'package:ecomerce/pages/product_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.titulo,
      required this.descricao,
      required this.price});
  final String image;
  final String titulo;
  final String descricao;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(
                      titulo: titulo,
                      descricao: descricao,
                      image: image,
                      price: price,
                    ),
                  ),
                );
              },
              child: Hero(
                tag: image,
                child: Image.asset(
                  image,
                  width: 170,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            child: Text(
              titulo,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            descricao,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "\$ $price",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}
