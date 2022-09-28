/*
import 'package:ecommerece/data/api/api_client.dart';
import 'package:ecommerece/data/controllers/popular_product_controller.dart';
import 'package:ecommerece/data/repository/popular_product_repo.dart';
import 'package:ecommerece/utils/app_constant.dart';
import 'package:get/get.dart';

Future<void>init()async{
  //api Clint
Get.lazyPut(()=>ApiClint(appBaseUrl: AppConstents.BASE_URl));
//repo
Get.lazyPut(() => PopularproductRepo(apiClint:Get.find()));
//controller
  Get.lazyPut(() => PopularProductController(popularproductRepo:Get.find()));
}*/