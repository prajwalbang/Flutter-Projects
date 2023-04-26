import 'package:get/get.dart';
import 'package:ghar_ka_khana/controllers/popular_product_controller.dart';
import 'package:ghar_ka_khana/data/api/api_client.dart';
import 'package:ghar_ka_khana/data/repository/popular_product_repo.dart';
import 'package:ghar_ka_khana/utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
