import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lmra/constant/constants.dart';

import 'Get_Start_Customer.dart';
import 'conform_personal_details.dart';
import 'new_account.dart';
import 'otp.dart';


class Login extends StatefulWidget {
  @override
  _GetStartCustomerState createState() => _GetStartCustomerState();
}

class _GetStartCustomerState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //
    // backgroundColor: kPurple,
    //  body: Padding(
    //    padding: const EdgeInsets.symmetric(
    //      horizontal: 20.0,
    //    ),
    //    child: Container(
    //      width: double.infinity,
    //
    //
    //
    //
    return Scaffold(
      backgroundColor: Colors.purple[900],
      appBar: AppBar(
        elevation: 0,
      backgroundColor: Colors.purple[900],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 24.0,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let\'s login',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: kWhite,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'STCForward-Bold',
                    ),
                  ),
              SizedBox(
                  height: 140.0,
                ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: 80.0,
                      // ),
                      Image.asset(
                        'images/stc_logo.png',
                        width: 200,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'STCForward-Bold',
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Login to my STC Jobs',
                        style: TextStyle(
                          fontSize: 16,
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'STCForward-Regular',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        cursorColor: kWhite,
                        style: TextStyle(color: kWhite),
                        decoration: InputDecoration(
                          hintText: 'Cell Phone Number',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kWhite),
                          ),
                          hintStyle: TextStyle(
                            color: kWhite,
                          ),
                          focusedBorder:UnderlineInputBorder(
                            borderSide: BorderSide(color: kPink, width: 2.0),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 30.0,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> OTP()));
                          },
                          child: Container(
                            width: double.infinity,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                              color: kGreen,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 19.0,horizontal: 50.0,),
                              child: Text(
                                'Login',
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
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));
                              },
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: kGreen,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'STCForward-Bold',
                                ),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              child: Text(
                                'RECOVER ACCOUNT',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: kGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                containerForSheet<String>(
                                  context: context,
                                  child: CupertinoActionSheet(
                                    title: const Text(
                                        'Contact STC Tasks support to recover your account'),
                                    //   message: const Text(''),
                                    actions: <Widget>[
                                      CupertinoActionSheetAction(
                                        child: const Text(
                                          'Call 1394023929101-',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context, '');
                                        },
                                      ),
                                    ],
                                    cancelButton: CupertinoActionSheetAction(
                                      child: const Text('Cancel'),
                                      isDefaultAction: true,
                                      onPressed: () {
                                        Navigator.pop(context, 'Cancel');
                                      },
                                    ),
                                  ),
                                );
                              }, //onpressed
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void containerForSheet<T>({BuildContext context, Widget child}) {
    showCupertinoModalPopup<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then<void>(
          (T value) {
        Scaffold.of(context).showSnackBar(
          new SnackBar(
            content: new Text('You clicked $value'),
            duration: Duration(milliseconds: 800),
          ),
        );
      },
    );
  }



}
