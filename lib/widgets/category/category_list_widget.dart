import 'package:ecomerce/widgets/category/category_item_widget.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: const [
      CategoryItem(
        image: "assets/Icon_Devices.png",
      ),
      CategoryItem(
        image: "assets/Icon_Gadgets.png",
      ),
      CategoryItem(
        image: "assets/Icon_Gaming.png",
      ),
      CategoryItem(
        image: "assets/Icon_Mens_Shoe.png",
      ),
      CategoryItem(
        image: "assets/Icon_Womens_Shoe.png",
      ),
    ]);
  }
}
