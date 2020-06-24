import 'package:coffe_shop/model/category.dart';

class Item {
  int id;
  String name;
  String photo;
  double price;
  bool favorite;
  Category category;

  Item({
    this.id,
    this.name,
    this.photo,
    this.price,
    this.favorite,
    this.category,
  });
}
