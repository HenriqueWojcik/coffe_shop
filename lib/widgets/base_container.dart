import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//classe pra base de páginas aonde é desnecessário usar listview
//usar singlechildscrollview quando ao abrir o teclado, da overflow

class BaseContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Alignment alignment;
  final bool needSingleChildScrollView;
  final Color backgroundColor;
  final String imageBackGround;

  const BaseContainer({
    Key key,
    this.child,
    this.padding,
    this.alignment,
    this.needSingleChildScrollView = false,
    this.backgroundColor,
    this.imageBackGround,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => closeKeyboard(),
      child: Container(
        decoration: BoxDecoration(
          image: imageBackGround != null
              ? DecorationImage(
                  image: AssetImage(imageBackGround), fit: BoxFit.cover)
              : null,
          color: backgroundColor,
        ),
        padding: padding,
        alignment: alignment,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: needSingleChildScrollView
            ? SingleChildScrollView(
                child: child,
              )
            : child,
      ),
    );
  }
}

closeKeyboard() {
  SystemChannels.textInput.invokeMethod('TextInput.hide');
}
