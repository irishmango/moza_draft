import 'package:flutter/material.dart';
import 'package:moza_draft/theme/theme.dart';


class HeaderExpand extends StatelessWidget {
  final Widget Function() path;
  final String? title;

  const HeaderExpand({
    required this.path,
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
           fontSize: 28,
           fontWeight: FontWeight.bold,
         ),),
       Expanded(child: SizedBox()),
       GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
              builder: (context) => path()));
          },
           child: Row(
            //  mainAxisSize: MainAxisSize.min,
             children: [
               Text('See all',
                 style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                   color: AppColors.appGreen,
                 ),),
                 SizedBox(width: 8,),
                 Icon(
                   Icons.arrow_outward,
                   color: AppColors.appGreen,
                   size: 28,
                 )
             ],
           ),
         ),
     ],
                          );
  }
}