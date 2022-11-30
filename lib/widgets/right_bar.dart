import 'package:design_app/constants/constant.dart';
import 'package:flutter/material.dart';



class RightBar extends StatelessWidget {
  final barwidth;
  const RightBar({ Key? key ,this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(height:25,
      width:barwidth,
        decoration: BoxDecoration(borderRadius:BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: accentHexcolor
         ),
        )
      ],
      
    );
  }
}