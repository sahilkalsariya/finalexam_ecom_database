import 'package:finalexam_ecom_database/model/CartProduct.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: CartProduct.length,itemBuilder: (context,i) {
        return Column(
          children: [
            ListTile(
              leading:Image.asset(CartProduct[i].image as String),
              title:Text("${CartProduct[i].name}") ,
              subtitle:Text("${CartProduct[i].price}"),
            )
          ],
        );
      }),
    );
  }
}
