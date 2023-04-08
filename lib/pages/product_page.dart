import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage(
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
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white.withOpacity(0),
            elevation: 0.0,
            expandedHeight: 500,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: image,
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                )),
          )
        ];
      },
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 0, right: 10),
            child: Text(
              titulo,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(descricao),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                "Nike Dri-Fit is a poliester fabric designed to help you keep dry so you can more comfortably work harder, loger"),
          )
        ],
      ),
    ));
  }
}
