import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:spotify_clone_project/modules/startPage/controller/c_start.dart';
import 'package:spotify_clone_project/modules/startPage/ui/start.dart';

class Routes {
  static const String start = "/";

  static String getStartRoute() => start;

  static List<GetPage> routes = [
    GetPage(
        name: start,
        page: () => const StartPage(),
        binding: BindingsBuilder(() {
          Get.put(CStartPage());
        }))
  ];
}
