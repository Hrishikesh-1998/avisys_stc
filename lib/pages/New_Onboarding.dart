import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lmra/constant/constants.dart';

import 'Get_Start_Customer.dart';
import 'WelcomePage.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

  List<PageViewModel> getPages(){
    return [
      PageViewModel(
        titleWidget:Container(),
        bodyWidget: Column(
          children: [
          Image.asset('images/stc_landingPage.png',width: 300,height: 150,),
        ],),
        footer: Column(
          children: [
            Text('Connecting',style: TextStyle(fontSize: 25.0,color: Colors.white,letterSpacing: 3,fontFamily:'STCForward-Regular',),),
            SizedBox(height: 15.0,),
            Text('Customers with Handymen',style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2,fontFamily: 'STCForward-Bold'),textAlign: TextAlign.center,),
          ],),
      ),

      PageViewModel(
        titleWidget:Container(),
        bodyWidget: Column(
          children: [
            Image.asset('images/stc_landingPage.png',width: 300,height:150,),
          ],),
        footer: Column(
          children: [
            Text('Connecting',style: TextStyle(fontSize: 25.0,color: Colors.white,letterSpacing: 3,fontFamily: 'STCForward-Regular'),),
            SizedBox(height: 15.0,),
            Text('Customers with Handymen',style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2,fontFamily: 'STCForward-Bold'),textAlign: TextAlign.center,),
          ],),
      ),


      PageViewModel(
        titleWidget: Container(),
        bodyWidget: Column(children: [
          Image.asset('images/stc_landingPage.png',width:300,height: 148,),
        ],),
        footer: Column(
          children: [
            Text('Connecting',style: TextStyle(fontSize: 25.0,color: Colors.white,letterSpacing: 3,fontFamily: 'STCForward-Regular'),),
            SizedBox(height: 10.0,),
            Text('Customers with Handymen',style: TextStyle(fontSize: 27.0,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2,fontFamily: 'STCForward-Bold'),textAlign: TextAlign.center,),
          ],),
          ),
      PageViewModel(
        useScrollView: false,
        titleWidget:Container( padding: EdgeInsets.only(top:0),),
        bodyWidget: Image.asset('images/stc_landingPage.png',width: 300,height: 147,),

        footer: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Connecting',style: TextStyle(fontSize: 25.0,color: Colors.white,letterSpacing: 3,fontFamily: 'STCForward-Regular'),),
              SizedBox(height: 5.0,),
              Text('Customers with Handymen',style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2,fontFamily: 'STCForward-Bold'),textAlign: TextAlign.center,),
                           ],
            ),
             SizedBox(height: 10.0,),
            Container(
              height: 43,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: kWhite,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text('Get Started',style: TextStyle(fontFamily: 'STCForward-Regular', fontSize: 17.0,color: kGreen,),),
                  ),
                  //SizedBox(width: 90,),
                  FlatButton(
                    height:double.infinity,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStartCustomer()));
                    },
                    child: Icon(Icons.arrow_forward_ios_sharp,size: 25.0,color: kWhite,),
                    color: kGreen,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Welcome()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPurple,
      body: SafeArea(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,),
              child: Container(
                width: double.infinity,
              ),
            ),
            SizedBox(height: 35.0,),
            Center(child: Text('Welcome to STC jobs',style: TextStyle(fontSize: 17.0,color: kWhite,fontWeight: FontWeight.bold,fontFamily: 'STCForward-Bold'),)),
            SizedBox(height: 25.0,),
            Center(child: Flexible(child: Image.asset('images/stc_logo.png',width: 170,))),
            SizedBox(height: 5.0,),
            Container(
              height: MediaQuery.of(context).size.height *0.74,
             width: double.infinity,
             child:IntroductionScreen(
                showNextButton:true,
                showDoneButton: false,
                globalBackgroundColor: Colors.purple[900],
               showSkipButton: true,
               skipFlex: 0,
               nextFlex: 0,
               skip: Text('SKIP',style: TextStyle(fontSize: 15.0,color: kGreen,fontWeight: FontWeight.bold),),
               next: Text('NEXT',style: TextStyle(fontSize: 15.0,color: kGreen,fontWeight: FontWeight.bold),),
                onSkip: ()=> _onIntroEnd(context),
                pages: getPages(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
