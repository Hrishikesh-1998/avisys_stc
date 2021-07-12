import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lmra/constant/constants.dart';

import 'bookservice.dart';
import 'login.dart';
import 'new_account.dart';

class GetStartCustomer extends StatefulWidget {
  @override
  _GetStartCustomerState createState() => _GetStartCustomerState();
}

class _GetStartCustomerState extends State<GetStartCustomer> {
  @override
  Widget build(BuildContext context) {
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
            size: 35.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 5.0,
                // ),
                Text(
                  'Who do you want to \nbe?',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: kWhite,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'STCForward-Bold',
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));
                      },
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            height: 180,
                            padding: EdgeInsets.only(right: 20),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: kWhite,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 67.0,
                                    left: 20.0,
                                  ),
                                  child: Text(
                                    'Tasker',
                                    style: TextStyle(
                                      fontFamily: 'STCForward-Bold',
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 230.0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 16.0),
                                        child: Text(
                                          'Get started as a tasker now and work directly with customers and earn money!',
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              fontFamily: 'STCForward-Regular'),
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios_outlined),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              right: 10.0,
                              bottom: 95.0,
                              child: Image.asset(
                                'images/stc_card1.png',
                                width: 160,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70.0,
                    ),
                    FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookService()));
                      },
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            height: 174,
                            padding: EdgeInsets.only(right: 20),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: kWhite,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 75.0,
                                    left: 20.0,
                                  ),
                                  child: Text(
                                    'Component',
                                    style: TextStyle(
                                      fontFamily: 'STCForward-Bold',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 243.0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 14.0),
                                        child: Text(
                                          'Book a service at your convenience, select from different verified taskers working in Bahrain',
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              fontFamily: 'STCForward-Regular'),
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios_outlined),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              right: 10.0,
                              bottom: 95.0,
                              child: Image.asset(
                                'images/stc_card1.png',
                                width: 160,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Already have an account ?',
                            style: TextStyle(
                                fontFamily: 'STCForward-Regular',
                                fontSize: 14.0,
                                color: kWhite),
                          )),
                      FlatButton(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => CreateAccount()));
                          },
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'STCForward-Bold',
                                    color: kGreen,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
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
