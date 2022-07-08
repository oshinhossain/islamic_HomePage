import 'package:flutter/cupertino.dart';

class CategoryCard with ChangeNotifier{
  String? productName;
  String? productImageUrl;
  CategoryCard({required this.productImageUrl,required this.productName});
  static List<CategoryCard> list=[
    CategoryCard(
      productImageUrl: "assets/image 136.png",
      productName: "Offers",
    ),
    CategoryCard(
      productImageUrl: "assets/image 141.png",
      productName: "Sri Lankan",

    ),
    CategoryCard(
      productImageUrl: "assets/image 140.png",
      productName: "Italian",
    ),
    CategoryCard(
      productImageUrl: "assets/image 141.png",
      productName: "Indian",
    ),
    CategoryCard(
      productImageUrl: "assets/image 136.png",
      productName: "Sri Lankan",
    ),
    CategoryCard(
      productImageUrl: "assets/image 140.png",
      productName: "Sri Lankan",

    ),
  ];
  void setProductDetailData({required String productName, required String productImageUrl}) {}

}