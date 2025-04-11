import 'package:flutter/material.dart';

class PageTitleNav extends StatelessWidget {
  final String title;
  final Widget? leftIcon;
  final Widget? rightIcon;

  const PageTitleNav({
    required this.title,
    this.leftIcon,
    this.rightIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (leftIcon != null)
                Positioned(
                  left: 0,
                  child: leftIcon!,
                ),
              if (rightIcon != null)
                Positioned(
                  right: 0,
                  child: rightIcon!,
                ),
            ],
          ),
        ),
      ],
    );
  }
}