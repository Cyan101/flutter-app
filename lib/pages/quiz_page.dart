import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

import '../ui/answer_button.dart';
import '../ui/question_text.dart';
import '../ui/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  
  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("Dank memes are dank", true),
    new Question("Elon musk is human", false),
    new Question("Pizza is good for you", false),
    new Question("Flutter is stupidly awesome", true)
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }
  
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true, () => print("User input True")),
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => print("User input False")),
          ],
        ),
        new CorrectWrongOverlay(true)
      ],
    );
  }
}
