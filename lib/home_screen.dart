import 'package:design_app/constants/constant.dart';
import 'package:design_app/widgets/left_bar.dart';
import 'package:design_app/widgets/right_bar.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController =TextEditingController();
  TextEditingController _weightController =TextEditingController();
 double  _bmiResult =0;
 String _textResult ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainHexColor,
      appBar: AppBar( 
        elevation:0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title:
      Text('BMI Calculator',style:TextStyle(color: accentHexcolor,fontWeight: FontWeight.w300)),),
      body: SingleChildScrollView(child: Column(
        children: [
          SizedBox(height: 20,),
        Row(
            mainAxisAlignment :MainAxisAlignment.spaceEvenly,
            children: [
          Container(
            width:130,
            child: TextField(
              controller: _heightController,
              style: TextStyle(color:accentHexcolor,fontWeight: FontWeight.w300,fontSize: 42),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: 'Height',
                hintStyle: TextStyle(color:Colors.white.withOpacity(0.8),fontWeight: FontWeight.w300,fontSize: 42)
              ),

            ),
          ),
           Container(
            width:130,
            child: TextField(
              controller: _weightController,
              style: TextStyle(fontSize:42,color:accentHexcolor,fontWeight: FontWeight.w300),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: 'Weight',
                hintStyle: TextStyle(color:Colors.white.withOpacity(0.8),fontWeight: FontWeight.w300,fontSize: 42)
              ),

            ),
          )
        
        ],),
        SizedBox(height:20),
        GestureDetector
        (onTap: (){
          double _h =double.parse(_heightController.text);
          double _w =double.parse(_weightController.text);
          setState(() {
            _bmiResult=_w/(_h*_h);
            if(_bmiResult>25){
            _textResult= 'you\'re over weight ';
            }
            else if(_bmiResult > 18.8 && _bmiResult <= 25){
             _textResult= 'you\'re Normal weight ';
            }
            else{
              _textResult= 'you\'re under weight ';
            }
          });
        },
          child: Container(child: Text("Calculate",style:TextStyle(color: accentHexcolor,fontSize: 22,fontWeight: FontWeight.bold)))),
        SizedBox(height:50),
         Text(_bmiResult.toStringAsFixed(2),style:TextStyle(color: accentHexcolor,fontSize: 90)),
         SizedBox(height:30),
         Visibility(
           visible: _textResult.isNotEmpty,
           child: Container(child: Text(_textResult,style:TextStyle(color: accentHexcolor,fontSize: 32)))),
         SizedBox(height:10),
         LeftBar(barwidth:40.0),
         SizedBox(height:20),
         LeftBar(barwidth:70.0),
         SizedBox(height:20),
         LeftBar(barwidth:40.0),
         SizedBox(height:20),
         RightBar(barwidth: 50.0,),
         SizedBox(height:20),
         RightBar(barwidth: 50.0,),
      ],),),
      
    );
  }
}