import 'package:flutter/material.dart';
import 'package:git/models/product.dart';
import 'package:git/pages/detail_product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> productList = List.generate(50, (index) => Product(productName: "Product ${index +1}",price: (index+1)*300));

    return Scaffold(
      appBar: AppBar(title: Text("productPage")),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context,i) => ListTile(
          title: Text(productList[i].productName),
          trailing: Text("price: ${productList[i].price}"),
          onTap: ()=>{
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail(productList[i])))
          },
        )
      )
    );
  }
}
