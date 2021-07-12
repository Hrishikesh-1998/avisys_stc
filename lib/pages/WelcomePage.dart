import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lmra/constant/constants.dart';


class Welcome extends StatefulWidget{
  @override
  _WelcomeState createState()=> _WelcomeState();
}

class _WelcomeState extends State<Welcome>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     backgroundColor: kPurple,
     body: Center(child: Text('Welcome Page',style: TextStyle(fontSize: 20.0,color: kWhite),)),
   );
  }
}