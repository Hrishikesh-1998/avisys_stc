import 'package:flutter/material.dart';
import 'package:lmra/constant/constants.dart';
import 'package:lmra/pages/serviceform.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

class PerformService extends StatefulWidget {
  @override
  _PerformServiceState createState() => _PerformServiceState();
}

class _PerformServiceState extends State<PerformService> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  bool value = true;
  DateTime dateTime;
  Duration duration;
  bool todayIsVisible = true;
  bool tomorrowIsVisible = false;
  bool dateIsVisible = false;
  String grpValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            backgroundColor: kWhite,
            pinned: true,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 40.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: kPurple,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentHeader(
              widget: Row(
                // Format this to meet your need
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 2.0,
                    width: 100.0,
                    child: Divider(
                      color: kPink,
                      thickness: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 30),
                          child: Text(
                            'When do you want to perform your service ?',
                            style: TextStyle(
                                fontSize: 28.0,
                                fontFamily: 'STCForward-Bold',
                                color: kBlack),
                          ),
                        ),
                        Theme(
                          data: ThemeData(unselectedWidgetColor: kPink),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: kPink,
                                focusColor: kPink,
                                value: 'red',
                                groupValue: grpValue,
                                onChanged: (val) {
                                  setState(() {
                                    grpValue = val;
                                    todayIsVisible = true;
                                    tomorrowIsVisible = false;
                                  });
                                },
                              ),
                              Text(
                                'Today',
                                style: TextStyle(
                                    color: kBlack,
                                    fontSize: 16.0,
                                    fontFamily: 'STCForward-Regular'),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: kGrey,
                          thickness: 1,
                        ),
                        Theme(
                          data: ThemeData(unselectedWidgetColor: kPink),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: kPink,
                                focusColor: kPink,
                                value: 'yellow',
                                groupValue: grpValue,
                                onChanged: (val) {
                                  // children:_openDatePicker(context);
                                  setState(() {
                                    grpValue = val;
                                    tomorrowIsVisible = true;
                                    todayIsVisible = false;
                                  });
                                },
                              ),
                              Text(
                                'Tomorrow',
                                style: TextStyle(
                                    color: kBlack,
                                    fontSize: 16.0,
                                    fontFamily: 'STCForward-Regular'),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: kGrey,
                          thickness: 1,
                        ),
                        Theme(
                          data: ThemeData(unselectedWidgetColor: kPink),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: kPink,
                                focusColor: kPink,
                                value: 'grey',
                                groupValue: grpValue,
                                onChanged: (val) {
                                  callDatePicker();
                                  setState(() {
                                    grpValue = val;
                                    tomorrowIsVisible = false;
                                    todayIsVisible = false;
                                  });
                                },
                              ),
                              Text(
                                'Choose Date',
                                style: TextStyle(
                                    color: kBlack,
                                    fontSize: 16.0,
                                    fontFamily: 'STCForward-Regular'),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: kGrey,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 10),
                          child: Text(
                            'Set Time',
                            style: TextStyle(
                                fontFamily: 'STCForward-Bold',
                                fontSize: 15.0,
                                color: kBlack),
                          ),
                        ),
                        Visibility(
                          visible: todayIsVisible,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Card(
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                  unselectedWidgetColor: kPink),
                                              child: Row(
                                                children: [
                                                  Radio(
                                                    activeColor: kPink,
                                                    focusColor: kPink,
                                                    value: 'grey',
                                                    groupValue: grpValue,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        grpValue = val;
                                                      });
                                                    },
                                                  ),
                                                  Text(
                                                    '7 - 9 am',
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Morning',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey,
                                              fontFamily: 'STCForward-Regular'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                  unselectedWidgetColor: kPink),
                                              child: Row(
                                                children: [
                                                  Radio(
                                                    activeColor: kPink,
                                                    focusColor: kPink,
                                                    value: 'grey',
                                                    groupValue: grpValue,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        grpValue = val;
                                                      });
                                                    },
                                                  ),
                                                  Text(
                                                    '2 - 4 pm',
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Morning',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey,
                                              fontFamily: 'STCForward-Regular'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: tomorrowIsVisible,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Card(
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                  unselectedWidgetColor: kPink),
                                              child: Row(
                                                children: [
                                                  Radio(
                                                    activeColor: kPink,
                                                    focusColor: kPink,
                                                    value: 'grey',
                                                    groupValue: grpValue,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        grpValue = val;
                                                      });
                                                    },
                                                  ),
                                                  Text(
                                                    '7 - 9 am',
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Morning',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey,
                                              fontFamily: 'STCForward-Regular'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                  unselectedWidgetColor: kPink),
                                              child: Row(
                                                children: [
                                                  Radio(
                                                    activeColor: kPink,
                                                    focusColor: kPink,
                                                    value: 'grey',
                                                    groupValue: grpValue,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        grpValue = val;
                                                      });
                                                    },
                                                  ),
                                                  Text(
                                                    '2 - 4 pm',
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Afternoon',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey,
                                              fontFamily: 'STCForward-Regular'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                  unselectedWidgetColor: kPink),
                                              child: Row(
                                                children: [
                                                  Radio(
                                                    activeColor: kPink,
                                                    focusColor: kPink,
                                                    value: 'grey',
                                                    groupValue: grpValue,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        grpValue = val;
                                                      });
                                                    },
                                                  ),
                                                  Text(
                                                    '5 - 7 pm',
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Evening',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey,
                                              fontFamily: 'STCForward-Regular'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: bottomButton(),
    );
  }

  void callDatePicker() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 10),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: kGrey,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () async {
                      DateTime newDateTime = await showRoundedDatePicker(
                          context: context,
                          locale: Locale('en', 'US'),
                          initialDate: DateTime.now(),
                          firstDate: DateTime(DateTime.now().year - 1),
                          lastDate: DateTime(DateTime.now().year + 1),
                          borderRadius: 16,
                          theme: ThemeData());
                      if (newDateTime != null) {
                        setState(() => dateTime = newDateTime);
                      }
                    },
                    label: const Text("Rounded Calendar (English)"),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: double.infinity,
                      height: 40.0,
                      color: kPink,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              color: kWhite, fontFamily: 'STCForward-Bold'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ])),
          );
        });
  }

  Widget bottomButton() {
    return FlatButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PerformServiceForm()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0, top: 40),
        width: double.infinity,
        height: 40.0,
        color: kPink,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            'Continue',
            style: TextStyle(color: kWhite, fontFamily: 'STCForward-Bold'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget widget;
  PersistentHeader({this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      height: 2.0,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.white,
        elevation: 0,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 2.0;

  @override
  double get minExtent => 2.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
