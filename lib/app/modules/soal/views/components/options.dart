import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/modules/soal/controllers/mulai_soal_controller.dart';

class Options extends StatelessWidget {
  final int? index;
  final String? text;
  final VoidCallback? press;

  const Options({
    Key? key,
    this.index,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MulaiSoalController>(
        init: MulaiSoalController(),
        builder: (qnController) {
          getRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.isCorrect) {
                return Colors.green.shade300;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.isCorrect) {
                return Colors.red.shade300;
              }
            }
            return Colors.grey.shade300;
          }

          getIconRight() {
            return getRightColor() == Colors.red.shade300
                ? Icons.close
                : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              height: 60,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: getRightColor(), width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${text}",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: getRightColor() == Colors.grey.shade300
                          ? Colors.transparent
                          : getRightColor(),
                      border: Border.all(color: getRightColor(), width: 2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: getRightColor() == Colors.grey.shade300
                        ? null
                        : Icon(
                            getIconRight(),
                            size: 20,
                            color: Colors.white,
                          ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
