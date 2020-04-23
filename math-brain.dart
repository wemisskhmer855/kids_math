import 'math.dart';
import 'dart:math';

class MathBrain {
  var mathData = Math(
      firstNum: Random().nextInt(10) + 1,
      secondNum: Random().nextInt(10) + 1,
      answerOne: Random().nextInt(20) + 1,
      answerTwo: Random().nextInt(20) + 1,
      threeChoices: <int>[1, 2, 3]);
  //add the 3 numbers to threeChoices: []
  void add() {
//    mathData.threeChoices = [5, 6, 7];
//    mathData.threeChoices.addAll([5, 6, 7]);
  }

//  addNumsthreeChoices.add(getChoiceTwo());
  getChoices(int index) {
    return mathData.threeChoices[index];
  }

  getAnswerOne() {
    return mathData.answerOne;
  }

  getAnswerTwo() {
    return mathData.answerTwo;
  }

  getFirstNum() {
    return mathData.firstNum;
  }

  getSecondNum() {
    return mathData.secondNum;
  }

  getTotalNum() {
    return mathData.firstNum + mathData.secondNum;
  }

  void nextQuestion() {
    mathData.firstNum = Random().nextInt(10) + 1;
    mathData.secondNum = Random().nextInt(10) + 1;
    mathData.threeChoices = [getAnswerOne(), getAnswerTwo(), getTotalNum()];
    mathData.threeChoices.shuffle();

//    mathData.threeChoices.addAll([mathData.answerOne, mathData.answerOne, 10]);
  }
}

//Do i really need a constructor function?
//Where do i put calculation the correctAnswer?
//
