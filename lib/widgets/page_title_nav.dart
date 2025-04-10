import 'package:flutter/material.dart';


class PageTitleNav extends StatelessWidget {

  final String title;

  const PageTitleNav({
    required this.title,
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
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                child: Icon(Icons.chevron_left, size: 36),
              ),
            ],
          ),
        ),
      ],
    );
  }
}