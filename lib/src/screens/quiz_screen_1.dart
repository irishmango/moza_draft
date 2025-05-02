import 'package:flutter/material.dart';
import 'package:moza_draft/data/quiz_data.dart';
import 'package:moza_draft/src/buttons/quiz_choice_button.dart';
import 'package:moza_draft/src/buttons/quiz_main_button.dart';
import 'package:moza_draft/src/shared/quiz_background.dart';
import 'package:moza_draft/src/widgets/page_title_nav.dart';
import 'package:moza_draft/src/widgets/progress_bar.dart';


class QuizScreen1 extends StatefulWidget {
  const QuizScreen1({super.key});

  @override
  State<QuizScreen1> createState() => _QuizScreen1State();
}

class _QuizScreen1State extends State<QuizScreen1> {
  int currentQuestionIndex = 0;
  int? selectedIndex;
  bool isAnswered = false;
  bool hasChecked = false;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = quiz[currentQuestionIndex];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background
          QuizBackground(),

          // Foreground
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: Column(
                children: [
                  Column(
                    children: [
                      PageTitleNav(title: "Cadences", leftIcon: Icon(Icons.close, size: 36,)),
                      SizedBox(height: 12),
                      ProgressBar()
                    ]
                  ),
                  Column(
                    children: [
                      SizedBox(height: 60,),
                      Text(currentQuestion.question, style: TextStyle(fontSize: 20),),
                      SizedBox(height: 54,),
                      if (currentQuestion.imagePath != null) 
                      SizedBox(height: 114, width: 200, child: Image.asset(currentQuestion.imagePath!), 
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),
                 ...List.generate(currentQuestion.options.length, (index) {
                final isSelected = selectedIndex == index;
                final isCorrect = currentQuestion.correctIndex == index;
                final answered = isAnswered;

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: QuizChoiceButton(
                    text: currentQuestion.options[index],
                    isSelected: isSelected,
                    isCorrect: isCorrect,
                    isAnswered: isAnswered,
                    onPressed: () {
                      if (!answered) {
                        setState(() {
                          selectedIndex = index;
                        });
                      }
                    }
                  ),
                );
              }),
                  SizedBox(height: 45,),
                  QuizMainButton(
                  onPressed: selectedIndex == null && !hasChecked
                      ? null
                      : () {
                          setState(() {
                            if (!hasChecked) {
                              hasChecked = true;
                              isAnswered = true;
                            } else {
                              if (selectedIndex == currentQuestion.correctIndex) {
                                result++;
                              }

                              if (currentQuestionIndex < quiz.length - 1) {
                                currentQuestionIndex++;
                                selectedIndex = null;
                                hasChecked = false;
                                isAnswered = false;
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Text("Quiz Complete!"),
                                    content: Text(
                                        "You've reached the end of the quiz.\nYou scored $result out of ${quiz.length}."),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            currentQuestionIndex = 0;
                                            selectedIndex = null;
                                            hasChecked = false;
                                            isAnswered = false;
                                            result = 0;
                                          });
                                        },
                                        child: Text("Restart"),
                                      )
                                    ],
                                  ),
                                );
                              }
                            }
                          });
                        },
                  hasChecked: hasChecked,
                )
                ]
                )
            )
          )
                    ],)
                    );
  }
}