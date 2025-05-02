import 'package:flutter/material.dart';
import 'package:moza_draft/theme/theme.dart';
import 'package:moza_draft/src/buttons/open_card_button.dart';

class ChapterCard extends StatelessWidget {
  final Color color;
  final Color buttonColor;
  final String title;
  final String duration;
  final String lessonAmount;
  final String description;

  const ChapterCard({
    required this.color,
    required this.buttonColor,
    required this.title,
    required this.duration,
    required this.lessonAmount,
    required this.description,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container Style
      width: double.infinity,
      height: 244,
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(24),
            boxShadow: [BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              offset: Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 4,
            ),
            BoxShadow(
              color: const Color.fromARGB(255, 84, 83, 83).withValues(alpha: 0.5),
              offset: Offset(0, -1),
              spreadRadius: 0,
              blurRadius: 4,
            )
            ],
            color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Main padding in the card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Row
            Row(
              children: [
                Expanded(child: Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black))),
                OpenCardButton(color: buttonColor),
              ],
            ),
            
            SizedBox(height: 8,),
            Text(duration, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.textColor)),
            Text(lessonAmount, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.textColor,)),
            Text(description, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.textColor,))


            
          ],
        ),
      ),
    );
  }
}