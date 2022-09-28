import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerece/data/controllers/popular_product_controller.dart';
import 'package:ecommerece/models/popular_products_model.dart';
import 'package:ecommerece/page/Small_Text/SmallText.dart';
import 'package:ecommerece/page/big_Text/big_text.dart';
import 'package:ecommerece/page/icon&Text/icon_and_text_widgets.dart';
import 'package:ecommerece/utils/app_column.dart';
import 'package:ecommerece/utils/app_constant.dart';
import 'package:ecommerece/utils/dimension.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController= PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  double _scaleFactor=0.8;
  double _hight = Dimension.pageViewContainer;
  @override
  void initState(){
    super .initState();
    pageController.addListener(() {
      setState((){
        _currPageValue=pageController.page!;
        print("Current page Value is"+_currPageValue.toString());
      });

    });
    }
  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        //slider section
       // GetBuilder<PopularProductController>(builder:(popularProducts){
         Container(
          // color: Colors.lime ,
          height: Dimension.pageView,
          child:PageView.builder(
            controller: pageController,
            itemCount:5,
            //popularProducts.popularproductList.length,
            itemBuilder: (context,position){
              return _builtPageItem(position);
            },

          ),
        ),


    //dots
        new  DotsIndicator(
              dotsCount:5,
    //popularProducts.popularproductList.isEmpty?1:popularProducts.popularproductList.length,
              position: _currPageValue,
              decorator: DotsDecorator(
                activeColor: Colors.orangeAccent,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),

            ),

        //papular Text
        SizedBox(height: Dimension.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimension.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimension.width10,),
              Container(
                margin: const  EdgeInsets.only (bottom:3),
                child: BigText(text: ".", color: Colors.black26,),

              ),
              SizedBox(width: Dimension.width10,),
              Container(
                margin: const  EdgeInsets.only (bottom:0.1),
                child: SmallText(
                  text: "Food Pairing",
                ),
              ),
            ],
          ),
        ),
        //list of food and images
        Container(
          height: 900,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              itemCount:10,
              itemBuilder:(context,index){
                return Container(
                  margin: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20,bottom: Dimension.height10),
                  child: Row(
                    children: [
                      //image section
                      Container(
                        height:Dimension.listViewimgScreen,
                        width: Dimension.listViewimgScreen,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(Dimension.radius20),
                          color: Colors.white38,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "assets/images/chicken.jpg"
                            ),
                          ),
                        ),
                      ),
                      //Text Container
                      Expanded(
                        child: Container(
                        height: Dimension.listViewTextcontSize,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimension.radius20),
                              bottomRight: Radius.circular(Dimension.radius20),
                            ),
                          color: Colors.white70,
                        ),
                          child:Padding(
                            padding: EdgeInsets.only(left: Dimension.width10,right: Dimension.width10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Honey Soy Chicken And Vegetable Skewers"),
                                SizedBox(height: Dimension.width10,),
                                SmallText(text: "With Chines Characteristics"),
                                SizedBox(height: Dimension.width10,),
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
                                ),
                                
                              ],
                            ),
                          ),
                      ),
                      ),
                    ],
                  ),
                );

              }),
        ),
      ],

    );
  }
  Widget _builtPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTras = _hight * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTras, 0);
    }
    else if (index == _currPageValue.floor() + 1) {
      var currScale = _scaleFactor +
          (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTras = _hight * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTras, 0);
    }
    else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTras = _hight * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTras, 0);
    }
    else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _hight * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(transform: matrix,
      child: Stack(
        children: [
          Container(
              height: Dimension.pageViewContainer,
              margin: EdgeInsets.only(
                  left: Dimension.width10, right: Dimension.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius30),
                  color: index.isEven ? Color(0xFF69c5df) : Color(0xFF69294cc),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/grilled.jpg"
                    ),

                  )
              )
          ),



      Align(

        alignment: Alignment.bottomCenter,

        child: Container(
          height: Dimension.pageViewTextContainer,
          margin: EdgeInsets.only(left: Dimension.width30,
              right: Dimension.width30,
              bottom: Dimension.height30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 3.0,
                    offset: Offset(0, 5)
                ),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0)
                ),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0)
                ),
              ]
          ),
          child: Container(
            padding: EdgeInsets.only(
                left: Dimension.height15, right: 15, top: 10),
            child: AppColumn(text: "Chines Side",),
          ),

        ),


      ),


  ],
    )
    );

  }
}
