import 'package:first_quiz_app/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_quiz_app/start_screen.dart';
import 'package:first_quiz_app/data/question.dart';
import 'package:first_quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen =  StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';
   List<String> selectedAnswer = [];

  void switchScreen() {
    setState(() {
      //activeScreen = const QuestionScreen();
      activeScreen = 'question-screen';
    });
  }

  void chosenAnswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length == questions.length){
      setState(() {
        //selectedAnswer = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    
    if( activeScreen == 'question-screen'){
      screenWidget =  QuestionScreen(
        onSelectAnswer:chosenAnswer ,);

    }

    if (activeScreen == 'results-screen'){
      screenWidget =   ResultsScreen(chosenAnswer: selectedAnswer,);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 190),
                Color.fromARGB(255, 110, 43, 226),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
