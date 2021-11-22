import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/modules/soal/views/mulai_soal.dart';

class SoalController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController absen = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    name = TextEditingController();
    absen = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    name.dispose();
    absen.dispose();
  }

  void start() {
    if (name.text == "" || absen.text == "") {
      Get.snackbar(
        "Gagal!",
        "Lengkapi data terlebih dahulu!",
        backgroundColor: Colors.white,
      );
    } else {
      Get.to(() => MulaiSoal(), arguments: [
        name.text,
        absen.text,
      ]);
    }
  }
}
