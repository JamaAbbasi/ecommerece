/*import 'package:ecommerece/data/api/api_client.dart';
import 'package:ecommerece/utils/app_constant.dart';
import 'package:get/get.dart';

class ApiClint extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;
  late  Map<String,String> _mainHeaders;
  ApiClint({required this.appBaseUrl})
  {
    baseUrl=appBaseUrl;
    timeout=Duration(seconds: 40);
    token=AppConstents.TOKEN;
_mainHeaders= {
   'Content-type':'application/json;charset=UTF-8',
  'Authorization':'Bearer $token',
};
  }
  //Future<Response> getData(String uri,) async{

    try {

      Response response = await get (uri);
      return response;
    }catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}*/