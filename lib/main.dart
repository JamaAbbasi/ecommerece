
import 'package:ecommerece/data/controllers/popular_product_controller.dart';
import 'package:ecommerece/page/Food_page_body.dart';
import 'package:ecommerece/page/Main_Food_Page.dart';
import 'package:ecommerece/page/popular_food_detail.dart';
import 'package:ecommerece/page/recommended_food_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helpers/dependences.dart' ;
Future<void>  main() async {
 //
  WidgetsFlutterBinding.ensureInitialized();
  // await  dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner:false ,

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:MainFoodPage(),
    );
  }
}
