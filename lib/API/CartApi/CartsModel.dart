

class ProductModel {
  int id = 0;
  String title = "";
  int price = 0;
  int quantity =0;
  int total =0;
  double discountPercentage =0;
  int discountedPrice = 0;


  ProductModel();
  ProductModel.fromJson(Map<String,dynamic> json){
    id = json['id'];
    title = json['title'];
    price = json['price'];
    quantity = json['quantity'];
    total = json['total'];
    discountPercentage = json['discountPercentage'];
    discountedPrice = json['discountedPrice'];
  }

  Map<String,dynamic> toJson(){
    return{
      "id" : id,
      "title" : title,
      "price" : price,
      "quantity" : quantity,
      "total" : total,
      "discountPercentage" : discountPercentage,
      "discountedPrice" : discountedPrice,
    };
  }

}



// class CartsModel {
//   int id;
//   String title;
//   int price;
//   int quantity;
//   int total;
//   double discountPercentage;
//   int discountedPrice;
//   String thumbnail;
//
//   CartsModel({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.quantity,
//     required this.total,
//     required this.discountPercentage,
//     required this.discountedPrice,
//     required this.thumbnail,
//   });
//
//   factory CartsModel.fromJson(Map<String, dynamic> json) => CartsModel(
//     id: json["id"],
//     title: json["title"],
//     price: json["price"],
//     quantity: json["quantity"],
//     total: json["total"],
//     discountPercentage: json["discountPercentage"]?.toDouble(),
//     discountedPrice: json["discountedPrice"],
//     thumbnail: json["thumbnail"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "title": title,
//     "price": price,
//     "quantity": quantity,
//     "total": total,
//     "discountPercentage": discountPercentage,
//     "discountedPrice": discountedPrice,
//     "thumbnail": thumbnail,
//   };
// }
