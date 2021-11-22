import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/app/modules/soal/controllers/mulai_soal_controller.dart';
import 'package:quiz/app/modules/soal/views/pembahasan.dart';
import 'package:quiz/app/routes/app_pages.dart';

class ScoreScreen extends StatelessWidget {
  final controller = Get.put(MulaiSoalController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
            Center(
              child: Container(
                height: Get.height * 0.4,
                width: Get.width * 0.8,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nama : ${controller.name}",
                      style: GoogleFonts.oswald(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Absen : ${controller.absen}",
                      style: GoogleFonts.oswald(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Score: ${Get.arguments[2] * 10}/${controller.questionData.length * 10}",
                      style: GoogleFonts.oswald(
                        fontSize: 35,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => Pembahasan());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(1, 161, 169, 1),
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(15),
                        ),
                      ),
                      child: Text("Lihat Pembahasan",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Get.offAllNamed(Routes.HOME);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.keyboard_arrow_left_rounded, size: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
