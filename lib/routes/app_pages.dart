import 'package:get/get.dart';
import 'package:martial_arts/modules/martialDetail/martial_detail_binding.dart';
import 'package:martial_arts/modules/martialDetail/martial_detail_screen.dart';

import '../modules/home/home_screen.dart';
import '../modules/home/home_screen_binding.dart';

part 'app_routes.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => const HomeScreen(),
        binding: HomeScreenBinding()),
    GetPage(
        name: Routes.MARTIALDETAIL,
        page: () => MartialDetailScreen(),
        binding: MartialBinding())
  ];
}
