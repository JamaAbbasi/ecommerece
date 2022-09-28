import 'package:ecommerece/utils/dimension.dart';
import 'package:ecommerece/page/Small_Text/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class ExpendableTextWidget extends StatefulWidget {
  final String text;

  const ExpendableTextWidget({Key? key, required this.text,}) : super(key: key);

  @override
  _ExpendableTextWidgetState createState() => _ExpendableTextWidgetState();
}

class _ExpendableTextWidgetState extends State<ExpendableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText =true;

  double textHeight=Dimension.screenHeight/5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }

    else {
      firstHalf = widget.text;
      secondHalf = " ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      child: secondHalf.isEmpty?SmallText(size:Dimension.font16,text: firstHalf):Column(
        children: [
          SmallText(hight:1,size:Dimension.font16,text: hiddenText?( firstHalf + "..."):(firstHalf+secondHalf)
          ),
        InkWell(
          onTap:(){
            setState((){
              hiddenText=!hiddenText;

            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SmallText(text: "Show more", color: Colors.orangeAccent,),
              Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Colors.orangeAccent,),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
