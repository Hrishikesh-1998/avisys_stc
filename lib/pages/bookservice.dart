import 'package:flutter/material.dart';
import 'package:lmra/assets/my_flutter_app_icons.dart';
import 'package:lmra/constant/constants.dart';
import 'package:lmra/pages/subsection.dart';
import 'dart:math' as math;

class BookService extends StatefulWidget {
  @override
  _BookServiceState createState() => _BookServiceState();
}

class _BookServiceState extends State<BookService> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPurple,
      extendBodyBehindAppBar: true,
      // SliverAppBar is declared in Scaffold.body, in slivers of a
      // CustomScrollView.
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            backgroundColor: kPurple,
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            leading: Icon(Icons.arrow_back_ios_rounded),
            actions: [
              Padding(
                padding: const EdgeInsets.all(
                  18.0,
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      color: kPink,
                      fontSize: 16,
                      fontFamily: 'STCForward-Bold'),
                ),
              )
            ],
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              // titlePadding: EdgeInsets.symmetric(horizontal: 20),
              title: const Text(
                "Book a Service",
                style: TextStyle(fontSize: 20, fontFamily: 'STCForward-Bold'),
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead.
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentHeader(
              widget: Column(
                // Format this to meet your need
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    child: TextField(
                      style: TextStyle(color: kWhite),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        fillColor: Color.fromRGBO(0, 0, 0, 0.2),
                        filled: true,
                        hintText: 'Products, Offers, Services…',
                        hintStyle: TextStyle(
                            fontSize: 14.0, color: kWhite, letterSpacing: 0.88),
                        prefixIcon: Transform.rotate(
                          angle: 180 * math.pi / 360,
                          child: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: null,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverFillRemaining(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      // SizedBox(
                      //   child: TextField(
                      //     style: TextStyle(color: kWhite),
                      //     decoration: InputDecoration(
                      //       border: OutlineInputBorder(
                      //         borderRadius: const BorderRadius.all(
                      //           const Radius.circular(10.0),
                      //         ),
                      //       ),
                      //       focusedBorder: InputBorder.none,
                      //       enabledBorder: InputBorder.none,
                      //       errorBorder: InputBorder.none,
                      //       fillColor: Color.fromRGBO(0,0,0,0.2),
                      //       filled: true,
                      //       hintText:'Products, Offers, Services…',
                      //       hintStyle: TextStyle(fontSize: 14.0, color: kWhite, letterSpacing: 0.88),
                      //       prefixIcon: Transform.rotate(
                      //         angle:  180 * math.pi / 360,
                      //         child: IconButton(
                      //           icon: Icon(
                      //             Icons.search,
                      //             color: Colors.white,
                      //             size: 24.0,
                      //           ),
                      //           onPressed: null,
                      //         ),
                      //       ),
                      //       contentPadding: EdgeInsets.symmetric(vertical: 20),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.count(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    primary: false,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        height: 157.0,
                        width: 157.0,
                        color: kWhite,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SubSection()));
                          },
                          child: Stack(children: [
                            Container(
                              margin: EdgeInsets.only(top: 25, left: 13.0),
                              child: Icon(Icons.water_damage, size: 40.0),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 80,
                              ),
                              child: Text(
                                'Painting',
                                style: TextStyle(
                                    color: kBlack,
                                    fontSize: 16.0,
                                    fontFamily: 'STCForward-Bold'),
                              ),
                            )
                          ]),
                        ),
                      ),
                      Container(
                        height: 157.0,
                        width: 157.0,
                        color: kWhite,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SubSection()));
                          },
                          child: Stack(children: [
                            Container(
                              margin: EdgeInsets.only(top: 25, left: 13.0),
                              child: Icon(Icons.water_damage, size: 40.0),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 80,
                              ),
                              child: Text(
                                'Plumbing',
                                style: TextStyle(
                                    color: kBlack,
                                    fontSize: 16.0,
                                    fontFamily: 'STCForward-Bold'),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: this._getBottomAppBar(),
    );
  }

  Widget _getBottomAppBar() {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              MyFlutterApp.home,
              size: 25.0,
              color: kGrey,
            ),
            Icon(
              MyFlutterApp.calendar,
              size: 25.0,
              color: kPurple,
            ),
            Icon(
              MyFlutterApp.cube,
              size: 25.0,
              color: kGrey,
            ),
            Icon(
              MyFlutterApp.bar,
              size: 24.0,
              color: kGrey,
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[
            //     Icon(Icons.home),
            //     Icon(Icons.calendar_today_sharp),
            //     Icon(Icons.widgets),
            //   ],
            // ),
          ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 70.0,
        color: kPurple,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 70.0;

  @override
  double get minExtent => 70.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
