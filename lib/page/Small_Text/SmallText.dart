

import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {

  final Color? color;
  final String text;
  double size;
  double hight;
  SmallText({Key? key,this.color, required this.text,
    this .size=12,
    this.hight=1.2
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        fontFamily: "Roboto",
        color: color,
        fontSize: size,
        height: hight
      ),
    );
  }
}
