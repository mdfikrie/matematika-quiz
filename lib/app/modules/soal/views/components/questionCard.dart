import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/modules/soal/controllers/mulai_soal_controller.dart';
import 'package:quiz/app/modules/soal/views/components/options.dart';

class QuestionCard extends StatelessWidget {
  final data;
  const QuestionCard({
    Key? key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MulaiSoalController>();
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${data!.question}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ...List.generate(
            data.options!.length,
            (index) => Options(
              index: index,
              text: data.options![index],
              press: () {
                controller.checkAns(data, index);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
