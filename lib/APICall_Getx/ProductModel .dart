import 'dart:convert';

class ProductModel {
  int? id;
  String title;
  String description;
  int price;
  String imageLink;
  ProductModel({
    this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageLink,
  });
  factory ProductModel.fromJson(Map<String, dynamic> data) => ProductModel(
    title: data["title"],
    description: data["description"],
    price: data["price"] ,
    imageLink: data["imageLink"],
  );
  Map<String, dynamic> toJson(data) => {
    "title": title,
    "description": description,
    "price": price,
    "imageLink": imageLink,
  };
}
class ApiService {
  Future<List<ProductModel>> fetchProducts() async {
    String json = '''[{
      "title": "title1",
      "description": "description1",
      "price": 1,
      "imageLink": "images/ic_facebook.png"
    }, {
      "title": "title2",
      "description": "description2",
      "price": 2,
      "imageLink": "images/ic_google.png"
    },{
      "title": "title3",
      "description": "description3",
      "price": 3,
      "imageLink": "images/ic_home_filled.png"
    }]''';

    var plistJson = jsonDecode(json) as List;
    List<ProductModel> plist = plistJson.map((tagJson) => ProductModel.fromJson(tagJson)).toList();
    return plist;
  }
}