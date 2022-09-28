/*import 'package:ecommerece/data/controllers/popular_product_controller.dart';
import 'package:ecommerece/data/repository/popular_product_repo.dart';
import 'package:ecommerece/models/popular_products_model.dart';

import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularproductRepo popularproductRepo;
    PopularProductController({required this.popularproductRepo});
    List<dynamic>_popularProductList=[];
    List<dynamic>get popularproductList=>_popularProductList=[];
    Future <void>getPopularProductList()async{
      Response response= await popularproductRepo.getPopularProductList();
      if(response.statusCode==200) {
        print("got products");
        _popularProductList = [];
        _popularProductList.addAll(Product.fromJson(response.body).products);
        print(_popularProductList);

        update();

      }
      else{
        _popularProductList.addAll(Product.fromJson(response.body).products);
      }
    }
}*/