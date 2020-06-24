import 'package:coffe_shop/model/item.dart';

class HomeApi {
  static Future getItems() async {
    List<Item> items = [
      Item(
        id: 0,
        name: "Capuchino",
        favorite: false,
        price: 14.55,
        photo: null,
        category: null,
      ),
      Item(
        id: 1,
        name: "Latte",
        favorite: false,
        price: 8.65,
        photo: null,
        category: null,
      ),
      Item(
        id: 2,
        name: "Americano",
        favorite: false,
        price: 9.30,
        photo: null,
        category: null,
      ),
      Item(
        id: 3,
        name: "Mocha",
        favorite: false,
        price: 13.00,
        photo: null,
        category: null,
      ),
      Item(
        id: 4,
        name: "Capuchino",
        favorite: false,
        price: 14.55,
        photo: null,
        category: null,
      ),
      Item(
        id: 5,
        name: "Capuchino",
        favorite: false,
        price: 14.55,
        photo: null,
        category: null,
      ),
    ];

    await Future.delayed(Duration(milliseconds: 500));

    return items;
  }
}
