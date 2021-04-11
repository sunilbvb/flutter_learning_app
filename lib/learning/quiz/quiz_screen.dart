import 'package:flutter/material.dart';
import 'abstract_quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Icon> iconsList = [];
  int countCorrectAnswers = 0;
  int totalQuestions = 0;

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getAnswer();

    setState(
      () {
        if (correctAnswer == userPickedAnswer) {
          print("correct");
          ++countCorrectAnswers;
          iconsList.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          iconsList.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        if (quizBrain.isFinished() == true) {
          Alert(
            context: context,
            title: 'Finished!',
            desc:
                'You\'ve reached and got $countCorrectAnswers/$totalQuestions in the quiz.',
          ).show();

          quizBrain.reset();
          countCorrectAnswers = 0;
          iconsList = [];
        } else {
          ++totalQuestions;
          quizBrain.getNextQuestionNumber();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getNextQuestionNumber != null
                      ? quizBrain.getNextQuestion()
                      : "Quiz Completed, Thanks!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  checkAnswer(true);
                },
                child: Text(
                  'True',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () {
                  checkAnswer(false);
                },
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: iconsList,
          ),
        ],
      ),
    );
  }
}
