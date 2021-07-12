import 'package:flutter/material.dart';
import 'package:lmra/constant/constants.dart';
import 'performservice.dart';
import 'dart:math' as math;
import 'package:lmra/assets/my_flutter_app_icons.dart';

class SubSection extends StatefulWidget {
  @override
  _SubSectionState createState() => _SubSectionState();
}

class _SubSectionState extends State<SubSection> {

  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPurple,
      // SliverAppBar is declared in Scaffold.body, in slivers of a
      // CustomScrollView.
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            titleSpacing: 20.0,
            backgroundColor: kPurple,
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            leading: FlatButton(onPressed:(){ Navigator.pop(context);} ,child: Icon(Icons.arrow_back_ios_rounded, color: kWhite,)),
            actions: [Padding(
              padding: const EdgeInsets.all(18.0,),
              child: Text('Sign up', style: TextStyle(color: kPink, fontSize: 16, fontFamily: 'STCForward-Bold'),),
            )],
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              // titlePadding: EdgeInsets.symmetric(horizontal: 20),
              title: const Text("Book a Service",  style: TextStyle(fontSize: 20, fontFamily: 'STCForward-Bold'),),
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
                    height: 4.0,
                  ),
                  SizedBox(
                    child: TextField(
                      style: TextStyle(color: kWhite),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        fillColor: Color.fromRGBO(0,0,0,0.2),
                        filled: true,
                        hintText:'Products, Offers, Services…',
                        hintStyle: TextStyle(fontSize: 14.0, color: kWhite),
                        prefixIcon: Transform.rotate(
                          angle:  180 * math.pi / 360,
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
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text('SERVICES',style: TextStyle(color: kPink, fontFamily: 'STCForward-Bold', fontSize: 12.0, letterSpacing: 1),),
                      Icon(Icons.arrow_forward_ios_rounded, color: kWhite,),
                      Text('Plumbing',style: TextStyle(color: kGrey,  fontFamily: 'STCForward-Bold',fontSize: 12.0, letterSpacing: 1),),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Divider(
                      thickness: 1.5,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [



                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GridView.count(
                      shrinkWrap: true,
                      scrollDirection : Axis.vertical,
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
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> PerformService()));
                            },
                            child: Stack(
                                children:[
                                  Container(
                                    margin: EdgeInsets.only(top: 25, left: 13.0),
                                    child: Icon(Icons.water_damage, size:40.0),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 80,),
                                    child: Text('Painting', style: TextStyle(color:kBlack, fontSize: 16.0, fontFamily: 'STCForward-Bold'),),
                                  )
                                ]
                            ),
                          ),
                        ),
                        Container(
                          height: 157.0,
                          width: 157.0,
                          color: kWhite,
                          child: FlatButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> PerformService()));
                            },
                            child: Stack(
                                children:[
                                  Container(
                                    margin: EdgeInsets.only(top: 25, left: 13.0),
                                    child: Icon(Icons.water_damage, size:40.0),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 80,),
                                    child: Text('Plumbing', style: TextStyle(color:kBlack, fontSize: 16.0,  fontFamily: 'STCForward-Bold'),),
                                  )
                                ]
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                ],
              ),
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
        padding: const EdgeInsets.symmetric(vertical:8.0),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(MyFlutterApp.home, size: 25.0, color: kGrey,),
            Icon(MyFlutterApp.calendar, size: 25.0, color: kPurple,),
            Icon(MyFlutterApp.cube, size: 25.0, color: kGrey,),
            Icon(MyFlutterApp.bar, size: 24.0, color: kGrey,)
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
        height: 140.0,
        color: kPurple,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 135.0;

  @override
  double get minExtent => 135.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
