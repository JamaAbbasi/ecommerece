import 'package:ecommerece/page/big_Text/big_text.dart';
import 'package:ecommerece/page/icon&Text/app_icon.dart';
import 'package:ecommerece/page/icon&Text/expendable_text.dart';
import 'package:ecommerece/utils/dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Appicon(icon: Icons.clear),
                Appicon(icon: Icons.shopping_basket_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(

                child: Center(child: BigText(size:Dimension.font26,text: "Crispy Chicken ",),),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimension.radius20),
                    topLeft: Radius.circular(Dimension.radius20),
                  )
                ),
              )),
            pinned: true,
            backgroundColor: Colors.orangeAccent,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/crispy.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child:Column(
              children: [
                Container(
                  child: ExpendableTextWidget(text:"You can also get a nice crust on chicken by starting it out in the oven:You can also get a nice crust on chicken by starting it out in the oven: follow your recipe, or heat the oven to between 400° to 450°F, place a rack   in the top third (the hottest part) of the oven and slide a pan of chicken You can also get a nice crust on chicken by starting it out in the oven: follow your recipe, or heat the oven to between 400° to 450°F, place a rack in the top third (the hottest part) of the oven and slide a pan of chickenYou can also get a nice crust on chicken by starting it out in the oven: follow your recipe, or heat the oven to between 400° to 450°F, place a rack in the top third (the hottest part) of the oven and slide a pan of chicken pieces in, skin side up. The skin will be crisp by the time the chicken is cooked through pieces in, skin side up. The skin will be crisp by the time the chicken is cooked throughpieces in, skin side up. The skin will be crisp by the time the chicken is cooked through follow your recipe, or heat the oven to between 400° to 450°F, place a rack in the top third (the hottest part) of the oven and slide a pan of chicken pieces in, skin side up. The skin will be crisp by the time the chicken is cooked throughYou can also get a nice crust on chicken by starting it out in the oven: follow your recipe, or heat the oven to between 400° to 450°F, place a rack in the top third (the hottest part) of the oven and slide a pan of chicken pieces in, skin side up. The skin will be crisp by the time the chicken is cooked through You can also get a nice crust on chicken by starting it out in the oven: follow your recipe, or heat the oven to between 400° to 450°F, place a rack in the top third (the hottest part) of the oven and slide a pan of chicken pieces in, skin side up. The skin will be crisp by the time the chicken is cooked through You can also get a nice crust on chicken by starting it out in the oven: follow your recipe, or heat the oven to between 400° to 450°F, place a rack in the top third (the hottest part) of the oven and slide a pan of chicken pieces in, skin side up. The skin will be crisp by the time the chicken is cooked through"
                  ,),
                  margin: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20),

                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:Column (
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimension.width20*2.5,
              right: Dimension.width20*2.5,
              top: Dimension.height10,
              bottom: Dimension.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Appicon(
                    iconSize: Dimension.iconSize24,
                    iconColor:Colors.white,
                    backgroundColor:Colors.orangeAccent,
                    icon: Icons.remove),
                BigText(text: " \$15.80 "+" X "+" 0 ",color: Colors.black26,size: Dimension.font26,),
                
                Appicon(
                    iconSize: Dimension.iconSize24,
                    iconColor:Colors.white,
                    backgroundColor:Colors.orangeAccent,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: Colors.orangeAccent,
                  )
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
        ],
      ),

    );
  }
}
