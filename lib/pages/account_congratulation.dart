import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lmra/constant/constants.dart';


import 'conform_personal_details.dart';
import 'email_verified.dart';

class AccountVerified extends StatefulWidget {
  @override
  _AccountVerifiedState createState() => _AccountVerifiedState();
}

class _AccountVerifiedState extends State<AccountVerified> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kGreen,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    SizedBox(
                      height: 146,
                    ),
                    Image.asset('images/check12.png',
                      width: 147,
                    ),
                    SizedBox(
                      height: 72,
                    ),
                    Text(
                      "Welcome to your \ncustomer account",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'STCForward-Bold',
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Your account is verified.",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16,
                        fontFamily: 'STCForward-Regular',
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Welcome to your Tasker account",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    height: 55,
                    minWidth: 335,
                    color: Colors.white,
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 20, color: kGreen),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmPersonalDetails()));
                    },
                  ),
                ),
              ],
            ),
            //  child:Image.asset("assets/success_logo.") ,
          ),
        ),
      ),
    );
  }
}
