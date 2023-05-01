import 'package:finalexam_ecom_database/model/Product.dart';
import 'package:finalexam_ecom_database/model/ProductData.dart';
import 'package:flutter/material.dart';

import '../model/CartProduct.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){},icon:Icon(Icons.shopping_bag),),
          title: Text("Products"),
          centerTitle: true,
        ),
        body: GridView.builder(
            itemCount: MyProduct.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image(image: AssetImage(MyProduct[i]['images'])),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      MyProduct[i]['title'],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Price : ${MyProduct[i]['price']}',
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        IconButton(
                            onPressed: () {
                              CartProduct.add(ProductData(name:MyProduct[i]['title'] , price: MyProduct[i]['price'], image:MyProduct[i]['images'] ) as ProductData);
                              Navigator.of(context).pushNamed('cartpage',arguments: MyProduct[i]);
                            }, icon: Icon(Icons.shopping_cart))
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

