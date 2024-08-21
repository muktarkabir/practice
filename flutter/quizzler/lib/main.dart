import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  void evaluateAndMoveToNextQuestion(bool selectedAnswer) {
    setState(() {
      checkAnswer(selectedAnswer);
      quizBrain.nextQuestion();
    });
  }

  int wins = 0, losses = 0;

  AlertStyle alertStyle() => AlertStyle(
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    descStyle: const TextStyle(
      fontWeight: FontWeight.normal,
    ),
    descTextAlign: TextAlign.center,
    animationDuration: const Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
      side: const BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
      color: alertColor(),
    ),
    alertAlignment: Alignment.center,
  );

  Color alertColor() {
    if (wins > losses) {
      return Colors.green;
    }
    return Colors.red;
  }

  void checkAnswer(bool selectedAnswer) {
    if (quizBrain.isFinished) {
      Alert(
        context: context,
        style: alertStyle(),
        type: wins > losses ? AlertType.success : AlertType.error,
        title: "All questions answered",
        desc: wins > losses ? "Congratulations" : "Better luck next time",
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            color: alertColor(),
            radius: BorderRadius.circular(8.0),
            child: const Text(
              "Okay",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ).show();
      quizBrain.reset();
      scoreKeeper = [];
    } else {
      bool correctAnswer = quizBrain.getQuestionAnswer();
      if (selectedAnswer == correctAnswer) {
        wins++;
        scoreKeeper.add(const Icon(
          size: 20.0,
          Icons.check,
          color: Colors.green,
        ));
      } else {
        losses++;
        scoreKeeper.add(const Icon(
          size: 20.0,
          Icons.close,
          color: Colors.red,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25.0,
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
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
                child: const Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  evaluateAndMoveToNextQuestion(true);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
                child: const Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  evaluateAndMoveToNextQuestion(false);
                },
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ]);
  }
}


