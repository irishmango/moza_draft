import 'package:flutter/material.dart';
import 'package:moza_draft/theme/theme.dart';

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),),
               child: 
               Container(
                width: 155,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.appBlue,
                  borderRadius: BorderRadius.circular(46),
                  boxShadow: [BoxShadow(
                    color: Color(0x3F563307),
                    blurRadius: 1.80,
                    offset: Offset(0, 1)
                                    )]),
                 child: TextButton(
                  onPressed: () {}, 
                  child: Text("Check", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.appWhite),)),
              ),
            )
        )],
                  )
                ),
                );
  }
}


















// colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)