import 'package:rms_mobile_app/learning/quiz/modal_quiz_question_answer.dart';

/* Abstraction Code */
class QuizBrain {
  int _questionNumber = 0;

  List<QuizQuestionAnswer> _quizQuestions = [
    QuizQuestionAnswer(
        'you can lead a cow down stairs but not up stairs', true),
    QuizQuestionAnswer(
        'Approximately one quarter of human bones are in the feet', false),
    QuizQuestionAnswer('A Slug\'s blood is green', true)
  ];

/* Abstraction Code */

/* Encapsulation Code */

  String totalQuestions() {
    return _quizQuestions.length.toString();
  }

  void getNextQuestionNumber() {
    if (_questionNumber < _quizQuestions.length - 1) {
      _questionNumber++;
    }
    return null;
  }

  String getNextQuestion() {
    return _quizQuestions[_questionNumber].question;
  }

  bool getAnswer() {
    return _quizQuestions[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _quizQuestions.length) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
/* Encapsulation Code */

/* Inheritance */
/*
  extends keyword
*/
/* Inheritance */

/* Polymorphism Code */
/*

 extends keyword
 @override
 super.state()

*/
/* Polymorphism Code */
