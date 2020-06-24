import 'package:coffe_shop/model/item.dart';
import 'package:coffe_shop/pages/home_api.dart';
import 'package:rxdart/rxdart.dart';

class HomeVieMmodel {
  final _items$ = BehaviorSubject<List<Item>>();

  get items$ => _items$.stream;

  init() async {
    List<Item> items = await HomeApi.getItems();

    _items$.add(items);
  }

  dispose() {
    _items$.close();
  }
}
