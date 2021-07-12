import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lmra/constant/constants.dart';

import 'email_otp.dart';

class ConfirmPersonalDetails extends StatefulWidget {
  @override
  _ConfirmPersonalDetailsState createState() => _ConfirmPersonalDetailsState();
}

class _ConfirmPersonalDetailsState extends State<ConfirmPersonalDetails> {
  final _formKey = GlobalKey<FormState>();
  FocusNode myFocusNode1 = new FocusNode();
  FocusNode myFocusNode2 = new FocusNode();
  FocusNode myFocusNode3 = new FocusNode();
  FocusNode myFocusNode4 = new FocusNode();
  FocusNode myFocusNode5 = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: kWhite,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: kPurple,
              ))),
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.0,),
                Text(
                  'Confirm your personal details',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'STCForward-Bold',
                  ),
                ),
                Column(
                  children: [

                  SizedBox(height: 24.0,),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius:50.0,
                        child:Icon(Icons.account_box_rounded,size: 50.0,),
                        backgroundColor: kGrey,
                        //backgroundImage:Icon(Icons.account_box_rounded),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 70,
                        child: CircleAvatar(
                          radius: 15.0,
                          backgroundColor: kWhite,
                          child: CircleAvatar(
                            radius: 13.0,
                            backgroundColor: kGreen,
                            child: Icon(Icons.add_a_photo_outlined,size: 15.0,color: kWhite,),
                          ),
                        ),
                      ),


                    ],

                  ),
                    SizedBox(height: 22.0,),

                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            focusNode: myFocusNode1,
                            decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                  color: myFocusNode1.hasFocus ? kGrey : kGrey
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              focusedBorder:UnderlineInputBorder(
                                borderSide: const BorderSide(color: kPink, width: 2.0),
                              ),
                            ),

                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextFormField(
                            focusNode: myFocusNode2,
                            decoration: InputDecoration(
                             labelText: 'Family name',
                              labelStyle: TextStyle(
                                  color: myFocusNode2.hasFocus ? kGrey : kGrey
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: kGrey,  width: 2.0),
                              ),
                              focusedBorder:UnderlineInputBorder(
                                borderSide: const BorderSide(color: kPink, width: 2.0),
                              ),
                            ),

                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextFormField(
                            focusNode: myFocusNode3,
                            decoration: InputDecoration(
                              labelText: 'Nationality',
                              labelStyle: TextStyle(
                                  color: myFocusNode3.hasFocus ? kGrey : kGrey
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: kGrey,  width: 2.0),
                              ),
                              focusedBorder:UnderlineInputBorder(
                                borderSide: const BorderSide(color: kPink, width: 2.0),
                              ),
                            ),

                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextFormField(
                            focusNode: myFocusNode4,
                            decoration: InputDecoration(
                              labelText: 'Cell Phone Number',
                              labelStyle: TextStyle(
                                  color: myFocusNode4.hasFocus ? kGrey : kGrey
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: kGrey,  width: 2.0),
                              ),
                              focusedBorder:UnderlineInputBorder(
                                borderSide: const BorderSide(color: kPink, width: 2.0),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextFormField(
                            focusNode: myFocusNode5,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              labelStyle: TextStyle(
                                  color: myFocusNode5.hasFocus ? kGrey : kGrey
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: kGrey,  width: 2.0),
                              ),
                              focusedBorder:UnderlineInputBorder(
                                borderSide: const BorderSide(color: kPink, width: 2.0),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> EmaiOTP()));
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
      ),
    );
  }
}
