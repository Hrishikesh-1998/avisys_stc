
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lmra/constant/constants.dart';
import 'package:sms_autofill/sms_autofill.dart';

import 'account_congratulation.dart';
import 'change_phone_number.dart';
import 'email_verify.dart';

class EmaiOTP extends StatefulWidget {
  @override
  _EmaiOTPState createState() => _EmaiOTPState();
}

class _EmaiOTPState extends State<EmaiOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 20),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              size: 30.0,
              color: kPurple,
            ),
          ),
        ],
      ),
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Enter the OTP you have received by email',
                    style:
                    TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,fontFamily: 'STCForward-Bold',),
                  ),
                  SizedBox(height: 107.5,),
                  PinFieldAutoFill(
                    codeLength: 4,
                    onCodeChanged: (value){
                      print(value);
                    },
                  ),
                  Center(
                    child: Row(
                      children: [
                        Spacer(),
                        Text('you can resend code after',style: TextStyle(fontFamily: 'STCForward-Bold', fontSize: 12.0,color: Colors.grey[500],fontWeight: FontWeight.bold),),

                        SizedBox(width: 5.0,),
                        Text('2:00',style: TextStyle(fontSize: 14.0,fontFamily: 'STCForward-Bold'),),
                        Spacer(),
                        SizedBox(height: 38.5,),
                      ],
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: FlatButton(onPressed: (){}, child: Center(child: Text('RESEND CODE',style: TextStyle(fontFamily: 'STCForward-Bold', fontSize: 12.0,fontWeight: FontWeight.bold,color: kPink),))),
                  ),
                  FlatButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Change_phone_Number()));
                  }, child: Text('CHANGE NUMBER',style: TextStyle(fontFamily: 'STCForward-Bold', fontSize: 12.0,fontWeight: FontWeight.bold,color: kPink),)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> EmailVerify()));
                  },
                  child: Container(
                    width: double.infinity,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      color: kPink,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 19.0,horizontal: 50.0,),
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          fontSize: 17.0,
                          color:kWhite,
                          fontFamily: 'STCForward-Bold',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
