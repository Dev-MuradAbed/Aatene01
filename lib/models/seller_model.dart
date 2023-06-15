class SellerModel {
  final String imageProfile;
  final String sellerName;
  final double rate;
  final bool owner;
  final List<String> imageProduct;

  SellerModel({
    required this.imageProfile,
    required this.sellerName,
    required this.rate,
    required this.owner,
    required this.imageProduct,
  });

  factory SellerModel.fromMap(Map<String, dynamic> map) {
    return SellerModel(
      imageProfile: map['imageProfile'],
      sellerName: map['sellerName'],
      rate: map['rate'],
      owner: map['owner'],
      imageProduct: List<String>.from(map['imageProduct']),
    );
  }
}