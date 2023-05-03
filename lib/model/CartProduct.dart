List<Map<String, dynamic>> CartProduct = [];

class CartProductM{
  final String title;
  final int price;

  CartProductM({
    required this.title,
    required this.price,
});

  factory CartProductM.from({required Map data}){
    return CartProductM(title: data['title'], price: data['price']);
  }
}