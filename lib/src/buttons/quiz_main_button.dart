import 'package:flutter/material.dart';
import 'package:moza_draft/theme/theme.dart';

class QuizMainButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool hasChecked;

  const QuizMainButton({
    super.key,
    required this.onPressed,
    required this.hasChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 70,
      decoration: BoxDecoration(
        color: hasChecked ? AppColors.appWhite : AppColors.appBlue,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            color: const Color(0x3F563307),
            blurRadius: 1.80,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: hasChecked
            ? Icon(
                Icons.arrow_forward_sharp,
                size: 25,
                color: AppColors.appBlue,
              )
            : Text(
                "Check",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.appWhite,
                ),
              ),
      ),
    );
  }
}