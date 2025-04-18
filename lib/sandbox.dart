import 'package:flutter/material.dart';
import 'package:moza_draft/screens/lesson_screen.dart';
import 'package:moza_draft/screens/topic_details_screen.dart';
import 'package:moza_draft/screens/topics_all.dart';
import 'package:moza_draft/theme.dart';
import 'package:moza_draft/widgets/dashboard_widgets/dashboard_app_bar.dart';
import 'package:moza_draft/widgets/dashboard_widgets/gym_time_widget.dart';
import 'package:moza_draft/widgets/dashboard_widgets/learn_path_card.dart';
import 'package:moza_draft/widgets/fortune_spinner.dart';
import 'package:moza_draft/widgets/header_expand.dart';
import 'package:moza_draft/widgets/topics_widgets/chapter_card.dart';
import 'package:moza_draft/widgets/topics_widgets/topic_card.dart';
import 'package:moza_draft/widgets/topics_widgets/topic_main_card.dart';
import 'package:moza_draft/widgets/topics_widgets/topics_grid.dart';
import 'package:google_fonts/google_fonts.dart';

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 230,
                          decoration: BoxDecoration(
                            color: AppColors.appBlue,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomRight: Radius.circular(24))
                                        ),
                                      ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                          child: Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Your Email", style: TextStyle(color: AppColors.appWhite, fontSize: 20, ),),
                              SizedBox(
                                height: 42,
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 16, top: 14),
                                    hintText: "Enter Your Email",
                                    hintStyle: GoogleFonts.nunito(
                                      textStyle: TextStyle(color: Colors.grey.withAlpha(100), fontSize: 16)
                                    ),
                                    filled: true,
                                    fillColor: AppColors.appWhite,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none 
                                    )
                                  ),
                                ),
                              ),
                              Text("Password", style: TextStyle(color: AppColors.appWhite, fontSize: 20)),
                              SizedBox(
                                height: 42,
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 16, top: 14),
                                    hintText: "Enter Your Email",
                                    hintStyle: TextStyle(color: Colors.grey.withAlpha(100), fontSize: 16),
                                    filled: true,
                                    fillColor: AppColors.appWhite,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none 
                                    )
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                        )
                      ]
                    ),
                    SizedBox(height: 12,),
                    Center(child: 
                    Container(
                      width: 190,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        color: AppColors.appOrange
                      ),
                    child: TextButton(
                    onPressed: () {}, 
                    child: Text("Sign In", style: TextStyle(color: AppColors.appWhite, fontSize: 20, fontWeight: FontWeight.bold),)))),
                  ],
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}


















// colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)