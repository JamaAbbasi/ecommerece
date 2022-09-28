
import 'package:ecommerece/page/big_Text/big_text.dart';
import 'package:ecommerece/page/icon&Text/app_icon.dart';
import 'package:ecommerece/page/icon&Text/expendable_text.dart';
import 'package:ecommerece/utils/app_column.dart';
import 'package:ecommerece/utils/dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Background Image
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimension.polpularFodImgSize, 
                decoration: BoxDecoration(
                  image: DecorationImage
                    (
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/classic.jpg"
                    ),
                  ),
                ),

              ),),
          //icon Wedgets
          Positioned(
            top: Dimension.height45,
            left: Dimension.width20,
              right: Dimension.width20,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Appicon(icon: Icons.arrow_back_ios),
                  Appicon(icon: Icons.shopping_basket_outlined)
                ],
              )),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.polpularFodImgSize-20,
            child: Container(
              padding: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20,top: Dimension.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimension.radius20),
                  topLeft: Radius.circular(Dimension.radius20),
                ),
                color: Colors.white,
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Chinese Side",),
                  SizedBox(height: Dimension.height20,),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimension.height20,),
                  Expanded(
                    child: SingleChildScrollView(
                    child:ExpendableTextWidget(
                      text: "General Tso's Chicken, America's Most Popular Chinese Takeout Dish.General Tso's Chicken, with its battered chicken in a sweet and sour sauce, laced with chilli, is apparently, America's favourite Chinese "
                          "takeout dish Ever notice how the chicken in stir fries at your favourite "
                          "Chinese restaurant is incredibly tender? It’s because they tenderise chicken"
                          " using a simple method called Velveting Chicken using baking soda. It’s a"
                          " quick and easy method that any home cook can do, and can also be used for beef."
                          " Use this for all your favourite Chinese chicken dishes, like Cashew Chicken,"
                          " Chicken Stir Fry, Chow Mein and Kung Pao Chicken. This is a game changer!"),


                  ),
                  ),
                ],
              ),

            ),),
          //expendable Text Wedgets
        ],
      ),
     bottomNavigationBar: Container(
       height: Dimension.bottomHeightBar,
       padding: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20,top: Dimension.height30,bottom: Dimension.height30),
       decoration: BoxDecoration(
         color: Colors.orange.shade50,
           borderRadius: BorderRadius.only(
           topLeft: Radius.circular(Dimension.radius20*2),
           topRight: Radius.circular(Dimension.radius20*2),

         )
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: Dimension.height20,bottom: Dimension.height20,left: Dimension.width20,right: Dimension.width20),
       decoration: BoxDecoration(
       color: Colors.white,
         borderRadius: BorderRadius.circular(Dimension.radius20),

       ),
                child: Row(
                  children: [
                    Icon(Icons.remove,color: Colors.black26,),
                    SizedBox(width: Dimension.width10/2,),
                    BigText(text: "0"),
                    SizedBox(width: Dimension.width10/2,),
                    Icon(Icons.add,color: Colors.black26,),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: Dimension.height20,bottom: Dimension.height20,left: Dimension.width20,right: Dimension.width20),
                child: BigText(text: "\$10|Add to cart",color: Colors.white,),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(Dimension.radius20),

                ),
              ),
            ],

       ),
     ),
    );
  }
}
