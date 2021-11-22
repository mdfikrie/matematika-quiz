import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/soal_controller.dart';

class SoalView extends GetView<SoalController> {
  final controller = Get.find<SoalController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz",
          style: GoogleFonts.oswald(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Color.fromRGBO(1, 161, 169, 1),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg-quiz.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: Get.height,
              width: Get.width,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Spacer(flex: 2),
                  Text(
                    "Let's Play Quiz",
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          controller: controller.name,
                          decoration: InputDecoration(
                            hintText: "Masukkan Nama",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: controller.absen,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "No. Absen",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {
                          controller.start();
                          controller.name.clear();
                          controller.absen.clear();
                        },
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Let's Start Quiz",
                            style: GoogleFonts.oswald(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
