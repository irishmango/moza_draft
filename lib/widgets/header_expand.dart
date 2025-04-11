import 'package:flutter/material.dart';


class HeaderExpand extends StatelessWidget {

  final String? title;

  const HeaderExpand({
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.start,
     children: [
       Text(title ?? "",
         style: TextStyle(
           fontSize: 24,
           fontWeight: FontWeight.bold,
         ),),
       Expanded(child: SizedBox()),
       Row(
         mainAxisSize: MainAxisSize.min,
         children: [
           Text('See all',
             style: TextStyle(
               fontSize: 24,
               fontWeight: FontWeight.bold,
               color: Colors.green,
             ),),
             SizedBox(width: 8,),
             Icon(
               Icons.arrow_outward,
               color: Colors.green,
               size: 28,
             )
         ],
       ),
     ],
                          );
  }
}