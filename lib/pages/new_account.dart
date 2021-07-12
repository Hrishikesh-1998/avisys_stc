import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lmra/constant/constants.dart';

import 'otp.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:  Icon(
            Icons.arrow_back_ios_rounded,
            size: 35.0,
            color: kPurple,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Container(
          //color: kWhite,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0,),
                  Text(
                    'Let’s create your account',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'STCForward-Bold',
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Enter you phone number and CPR',
                    style: TextStyle(
                      fontSize: 14.0,
                      letterSpacing: 0.28,
                      fontFamily: 'STCForward-Regular',
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Cell Phone Number',
                            focusedBorder:UnderlineInputBorder(
                              borderSide:  BorderSide(color: kPurple, width: 2.0),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Identity card number (CPR)',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: kGrey,  width: 2.0),
                            ),
                            focusedBorder:UnderlineInputBorder(
                              borderSide:  BorderSide(color: kPurple, width: 2.0),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 41.0,
                        ),
                        Row(
                          children: [
                            Theme(
                              data: ThemeData(unselectedWidgetColor: kPink),
                              child: Checkbox(
                                  value: value,
                                  checkColor: kWhite, // color of tick Mark
                                  activeColor: kPink,
                                  onChanged: (value) {
                                    setState(() {
                                      this.value = !value;
                                    });
                                  }),
                            ),
                            SizedBox(
                              width: 11.0,
                            ),
                            Text('Accept',style: TextStyle(fontFamily: 'STCForward-Regular'),),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'TERMS & CONDITIONS',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: kPink,
                                  fontFamily: 'STCForward-Bold',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                          // SizedBox(height: 112.0,),

                      ],
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> OTP()));
                  },
                  child: Container(
                    width: double.infinity,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      color: kPink,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 50.0,),
                      child: Text(
                        'Continue',
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
