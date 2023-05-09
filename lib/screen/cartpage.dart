import 'package:finalexam_ecom_database/helper/ProductDB.dart';
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
      body: FutureBuilder(
          future: DBHelper.dbHelper.allData(), builder: (context, snapshot) {}),
      // body: ListView.builder(
      //   itemCount: CartProduct.length,
      //   itemBuilder: (context, i) {
      //     return Card(
      //       child: ExpansionTile(
      //         title: Text(CartProduct[i]['title']),
      //         subtitle: Text("${CartProduct[i]['total']}"),
      //         leading: Container(
      //           child: Image.asset(CartProduct[i]['images']),
      //         ),
      //         children: [
      //           Container(
      //             height: 35,
      //             width: 105,
      //             child: Row(
      //               children: [
      //                 Expanded(
      //                     child: IconButton(
      //                   onPressed: () {
      //                     setState(() {
      //                       if (CartProduct[i]['i'] > 0) {
      //                         CartProduct[i]['i']--;
      //                         CartProduct[i]['total'] -=
      //                             CartProduct[i]['price'];
      //                       }
      //                       if (CartProduct[i]['i'] == 0) {
      //                         CartProduct.remove(CartProduct[i]);
      //                       }
      //                     });
      //                   },
      //                   icon: Icon(
      //                     Icons.remove_outlined,
      //                     size: 15,
      //                   ),
      //                 )),
      //                 Expanded(
      //                     child: Container(
      //                   child: Text("${CartProduct[i]['i']}"),
      //                   alignment: Alignment.center,
      //                 )),
      //                 Expanded(
      //                   child: IconButton(
      //                     onPressed: () {
      //                       setState(() {
      //                         CartProduct[i]['i']++;
      //                         CartProduct[i]['total'] =
      //                             CartProduct[i]['price'] * CartProduct[i]['i'];
      //                       });
      //                     },
      //                     icon: Icon(
      //                       Icons.add,
      //                       size: 15,
      //                     ),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
