import 'package:ecommerece/utils/dimension.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {

 final Color? color;
 final String text;
  double size;
  TextOverflow overflow;
 BigText({Key? key,this.color, required this.text,
this .size=0,
 this.overflow=TextOverflow.ellipsis
 }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
       text,
      overflow: overflow,

      style: TextStyle(
      fontFamily: "Roboto",
        color: color,
        fontSize:size==0? Dimension.font20:size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
