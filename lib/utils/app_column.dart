import 'package:ecommerece/utils/dimension.dart';
import 'package:ecommerece/page/Small_Text/SmallText.dart';
import 'package:ecommerece/page/big_Text/big_text.dart';
import 'package:ecommerece/page/icon&Text/icon_and_text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimension.font26,),
        SizedBox(
            height: Dimension.height10),
        Row(
          children: [
            Wrap(
                children:
                List.generate(5, (index) => Icon(Icons.star,color: Colors.orangeAccent,))
            ),
            SizedBox(width: 10,),
            SmallText(text: "4.5"),
            SizedBox(width: 10,),
            SmallText(text: "3000"),
            SizedBox(width: 10,),
            SmallText(text:"Comments" )

          ],
        ),
        SizedBox(height: Dimension.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: "Normal",
                iconColor:Colors.orange),

            IconAndTextWidget(icon: Icons.location_on,
                text: "5.7km",
                iconColor:Colors.lightGreen),

            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: "32min",
                iconColor:Colors.amberAccent),
          ],
        )
      ],
    );
  }
}
