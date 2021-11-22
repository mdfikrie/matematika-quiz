import 'package:get/get.dart';

import 'package:quiz/app/modules/home/bindings/home_binding.dart';
import 'package:quiz/app/modules/home/views/home_view.dart';
import 'package:quiz/app/modules/kd/bindings/kd_binding.dart';
import 'package:quiz/app/modules/kd/views/kd_view.dart';
import 'package:quiz/app/modules/materi/bindings/materi_binding.dart';
import 'package:quiz/app/modules/materi/views/materi_view.dart';
import 'package:quiz/app/modules/profile/bindings/profile_binding.dart';
import 'package:quiz/app/modules/profile/views/profile_view.dart';
import 'package:quiz/app/modules/soal/bindings/soal_binding.dart';
import 'package:quiz/app/modules/soal/views/soal_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MATERI,
      page: () => MateriView(),
      binding: MateriBinding(),
    ),
    GetPage(
      name: _Paths.KD,
      page: () => KdView(),
      binding: KdBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SOAL,
      page: () => SoalView(),
      binding: SoalBinding(),
    ),
  ];
}
