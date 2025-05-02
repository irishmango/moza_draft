import 'package:flutter/material.dart';
import 'package:moza_draft/theme/theme.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        width: 240,
                        height: 16,
                        decoration: BoxDecoration(
                          color: AppColors.appOrange.withAlpha(85),
                          borderRadius: BorderRadius.circular(22))
                        ),
                        Container(
                          width: 50,
                          height: 16,
                          decoration: BoxDecoration(
                            color: AppColors.appOrange,
                            borderRadius: BorderRadius.circular(22))
                        )
                    ]
                    )
                );
  }
}