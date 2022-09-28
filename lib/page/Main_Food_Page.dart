
import 'package:ecommerece/page/Food_page_body.dart';
import 'package:ecommerece/page/Small_Text/SmallText.dart';
import 'package:ecommerece/page/big_Text/big_text.dart';
import 'package:ecommerece/utils/dimension.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageStateState();
}

class _MainFoodPageStateState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("FoodApp"),
      //   backgroundColor: Colors.orangeAccent,
      // ),
      body: Column(
        children: [
          //Showing The Header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimension.height45,bottom: Dimension.height10),
              padding: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Pakistan",color:Colors.orangeAccent,size: 30,),
                      Row(
                        children: [
                          SmallText(text: "Islamabad",color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )

                    ],
                  ),
                  Center(
                  child:Container(
                    width: Dimension.height45,
                    height: Dimension.height45,
                    child: Icon(Icons.search,color:Colors.white,size: Dimension.iconSize24,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius15),
                      color: Colors.orangeAccent,
                    ),
                  ),
                  ),
                ],

              ),
            ),
          ),
          //Showing The Body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          ),),
        ],

      ),

    );
  }
}
