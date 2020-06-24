import 'package:coffe_shop/model/addres.dart';
import 'package:coffe_shop/model/item.dart';

class User {
  int id;
  String name;
  Address address;
  List<Item> favoritesItems;

  User({
    this.id,
    this.name,
    this.address,
    this.favoritesItems,
  });
}
