import 'package:coffe_shop/model/item.dart';
import 'package:coffe_shop/utils/app_colors.dart';
import 'package:coffe_shop/widgets/app_text.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final Item item;
  final bool isOdd;
  final Color color;

  const HomeCard({
    Key key,
    @required this.item,
    @required this.isOdd,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: isOdd ? 15 : 0,
        bottom: isOdd ? 0 : 15,
        left: isOdd ? 10 : 0,
        right: isOdd ? 0 : 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.randomColor(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          AppText(
            item.name,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
