import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/app/modules/soal/controllers/mulai_soal_controller.dart';
import 'components/questionCard.dart';

class MulaiSoal extends StatelessWidget {
  final controller = Get.put(MulaiSoalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 161, 169, 1),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 30, right: 10, left: 10),
                  padding: EdgeInsets.only(right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_left_rounded,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.music_note_outlined,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text: "Question ${controller.questionNumber.value}",
                        style: GoogleFonts.oswald(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: "/${controller.questionData.length}",
                            style: GoogleFonts.oswald(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: controller.questionData.length,
                    controller: controller.pageController,
                    physics: NeverScrollableScrollPhysics(),
                    onPageChanged: controller.updateNumQuest,
                    itemBuilder: (context, index) {
                      var data = controller.questionData[index];
                      return QuestionCard(
                        data: data,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
