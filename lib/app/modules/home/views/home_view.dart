import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(117, 24, 17, 1),
        title: Text(
          "SPLDV",
          style: GoogleFonts.oswald(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.jpg"),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 8),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ), // KI KD IPK
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.KD);
                  },
                  child: Container(
                    height: 110,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 90,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(41, 168, 245, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 90,
                              margin: EdgeInsets.only(left: 20),
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/kd.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                border:
                                    Border.all(color: Colors.white, width: 3),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "KI, KD & IPK",
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontSize: 34,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 10,
                          top: 40,
                          child: Icon(
                            Icons.double_arrow_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.MATERI);
                  },
                  child: Container(
                    height: 110,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 90,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(64, 48, 59, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 90,
                              margin: EdgeInsets.only(left: 20),
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/materi.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                border:
                                    Border.all(color: Colors.white, width: 3),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Materi",
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontSize: 34,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 10,
                          top: 40,
                          child: Icon(
                            Icons.double_arrow_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.SOAL);
                  },
                  child: Container(
                    height: 110,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 90,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(1, 161, 169, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 90,
                              margin: EdgeInsets.only(left: 20),
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/quiz.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                border:
                                    Border.all(color: Colors.white, width: 3),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Quiz",
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontSize: 34,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 10,
                          top: 40,
                          child: Icon(
                            Icons.double_arrow_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.PROFILE);
                  },
                  child: Container(
                    height: 110,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 90,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 46, 102, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 90,
                              margin: EdgeInsets.only(left: 20),
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/profile.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                border:
                                    Border.all(color: Colors.white, width: 3),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "My Profile",
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontSize: 34,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 10,
                          top: 40,
                          child: Icon(
                            Icons.double_arrow_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
