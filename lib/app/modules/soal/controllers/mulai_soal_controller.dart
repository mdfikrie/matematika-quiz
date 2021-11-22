import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/app/modules/soal/views/score_screen.dart';
import '../../../data/question.dart';

class MulaiSoalController extends GetxController {
  String name = Get.arguments[0];
  String absen = Get.arguments[1];

  List<Question> questionData = sample_data
      .map(
        (question) => Question(
          id: question['id'],
          question: question['question'],
          options: question['options'],
          answer: question['answer_index'],
        ),
      )
      .toList();

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _isCorrect;
  int get isCorrect => this._isCorrect;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  RxInt numOfCorrectAns = 0.obs;

  late PageController pageController;

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _isCorrect = question.answer!;
    _selectedAns = selectedIndex;

    if (_isCorrect == _selectedAns) {
      numOfCorrectAns.value = numOfCorrectAns.value + 1;
      print(numOfCorrectAns.value);
    }
    update();

    nextQuestion();
  }

  Future<void> nextQuestion() async {
    if (_questionNumber.value != questionData.length) {
      Future.delayed(Duration(seconds: 1), () {
        _isAnswered = false;
        pageController.nextPage(
            duration: Duration(milliseconds: 250), curve: Curves.ease);
      });
    }
    if (_questionNumber.value == questionData.length) {
      await Future.delayed(Duration(seconds: 1), () {
        Get.off(
          () => ScoreScreen(),
          arguments: [
            Get.arguments[0],
            Get.arguments[1],
            numOfCorrectAns.value,
          ],
        );
      });
      _isAnswered = false;
      _questionNumber.value = 1;
    }
  }

  void updateNumQuest(int index) {
    _questionNumber.value = index + 1;
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }
}
