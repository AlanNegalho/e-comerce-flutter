import 'package:ecomerce/widgets/category/category_list_widget.dart';
import 'package:ecomerce/widgets/product/product_list_widget.dart';
import 'package:ecomerce/widgets/search_box_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            SearchBox(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Categores",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 90,
              child: CategoryList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                TextButton(
                  child: Text(
                    "See All",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  onPressed: () => {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 290,
              child: ProductList(
                scrollDerection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
