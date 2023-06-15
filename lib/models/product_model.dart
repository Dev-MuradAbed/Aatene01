class ProductModel {
  final String image;
  final String shop;
  final bool owner;
  final double rate;
  final int price;
  final int oldPrice;
  final int off;
  final String productName;
  final bool delivery;
  final bool ads;

  ProductModel({
    required this.image,
    required this.shop,
    required this.owner,
    required this.rate,
    required this.price,
    required this.oldPrice,
    required this.off,
    required this.productName,
    required this.delivery,
    required this.ads,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      image: map['image'],
      shop: map['shop'],
      owner: map['owner'],
      rate: map['rate'],
      price: map['price'],
      oldPrice: map['oldPrice'],
      off: map['off'],
      productName: map['productName'],
      delivery: map['delivery'],
      ads: map['ads'],
    );
  }
}
