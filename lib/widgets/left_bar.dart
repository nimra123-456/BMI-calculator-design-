import 'package:flutter/material.dart';

import '../constants/constant.dart';



class LeftBar extends StatelessWidget {
  final barwidth;
  const LeftBar({ Key? key ,this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(height:25,
      width:barwidth,
        decoration: BoxDecoration(borderRadius:BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: accentHexcolor
         ),
        )
      ],
      
    );
  }
}