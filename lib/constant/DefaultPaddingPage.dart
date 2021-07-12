import 'package:flutter/material.dart';
import 'constants.dart';



class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPurple,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,),
        child: Container(
          width: double.infinity,
        ),
      ),
    );
  }
}