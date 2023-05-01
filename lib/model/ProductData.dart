import 'dart:typed_data';

class ProductData {
  final String name;
  Uint8List? image;
  final int price;

  ProductData({required this.name, required this.image, required this.price});

  factory ProductData.fromData({required Map data , Uint8List? image}) {
    return ProductData(
        name: data['name'], image: image, price: data['price']);
  }
}
