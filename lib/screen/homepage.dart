import 'package:finalexam_ecom_database/model/Product.dart';
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
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('cartpage');
            },
            icon: Icon(Icons.shopping_bag),
          ),
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
                      height: 50,
                      width: 50,
                      child: Image(image: AssetImage(MyProduct[i]['images'])),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      MyProduct[i]['title'],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 5),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Price : ${MyProduct[i]['price']}',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        IconButton(
                            onPressed: () {
                              CartProduct.add(MyProduct[i]);
                              setState(() {
                                MyProduct[i]['i']++;
                                MyProduct[i]['total'] =
                                    MyProduct[i]['price'] * MyProduct[i]['i'];
                              });



                              print(CartProduct);
                            },
                            icon: Icon(Icons.shopping_cart))
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
