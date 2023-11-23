import 'package:flutter/material.dart';
import 'package:git/models/product.dart';

class ProductDetail extends StatelessWidget {
   Product product;

   ProductDetail(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("detail product")),
      body: Center(
        child: Column(
          children: [
            Text("Name: ${product.productName}"),
            SizedBox(height: 10,),
            Text("Price${product.price}")
          ],
        ),
      ),
    );
  }
}
