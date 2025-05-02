import 'package:flutter/material.dart';


class OpenCardButton extends StatelessWidget {
  final Color color;
  

  const OpenCardButton({
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Center(
        child: IconButton(onPressed: () {

        }, 
        icon: Icon(
          Icons.arrow_outward,
          color: Colors.white,
        ),)
        
      ),
    );
  }
}