import 'package:coffe_shop/model/item.dart';
import 'package:coffe_shop/pages/home_card.dart';
import 'package:coffe_shop/pages/home_viewmodel.dart';
import 'package:coffe_shop/utils/app_colors.dart';
import 'package:coffe_shop/widgets/app_layout_builder.dart';
import 'package:coffe_shop/widgets/app_text.dart';
import 'package:coffe_shop/widgets/progress.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _viewModel = HomeVieMmodel();

  @override
  void initState() {
    super.initState();

    _viewModel.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return SafeArea(
      child: AppLayoutBuilder(
        needSingleChildScrollView: false,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            _coffeBanner(),
            _categoryTabs(),
            _itemsStream(),
          ],
        ),
      ),
    );
  }

  _coffeBanner() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                "Wanna coffe",
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 5),
              AppText(
                "Here are best Tastes for you!",
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _categoryTabs() {
    return SizedBox();
  }

  _itemsStream() {
    return Expanded(
      child: StreamBuilder(
        stream: _viewModel.items$,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return AppText(snapshot.error);
          }

          if (!snapshot.hasData) {
            return Progress();
          }

          List<Item> items = snapshot.data;

          return _itemsListView(items);
        },
      ),
    );
  }

  _itemsListView(List<Item> items) {
    return GridView.builder(
      //shrinkWrap: false,
      // physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, idx) {
        Item item = items[idx];

        return HomeCard(
          item: item,
          isOdd: idx.isOdd,
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _viewModel.dispose();
  }
}
