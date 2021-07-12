import 'package:flutter/material.dart';
import 'package:lmra/constant/constants.dart';
import 'package:lmra/pages/home.dart';

// Adapted from offical flutter gallery:
// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/bottom_app_bar_demo.dart
class PerformServiceForm extends StatefulWidget {
  const PerformServiceForm({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _PerformServiceFormState();
}

class _PerformServiceFormState extends State<PerformServiceForm> {
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
  ScrollController _scrollController = ScrollController();
  static const _kBasePadding = 16.0;
  static const kExpandedHeight = 250.0;
  final appBarHeight = 80.0;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(() => setState(() {}));
    dateTime = DateTime.now();
    duration = Duration(minutes: 10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      // SliverAppBar is declared in Scaffold.body, in slivers of a
      // CustomScrollView.
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            backgroundColor: kWhite,
            pinned: true,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 130.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: kPurple,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.clear,
                  color: kPurple,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Add task details",
                style: TextStyle(
                    color: kBlack, fontSize: 20, fontFamily: 'STCForward-Bold'),
              ),
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
                    width: 200.0,
                    child: Divider(
                      color: kPink,
                      thickness: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead.
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   height: 2.0,
                        //   width: 200.0,
                        //   child: Divider(
                        //     color: kPink,
                        //     thickness: 2.0,
                        //   ),
                        // ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildPasswordTextField(),
                              SizedBox(
                                height: 20,
                              ),
                              _buildMultilineTextField(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, bottom: 20),
                                child: Text(
                                  'Preferred Tasker spoken language ',
                                  style: TextStyle(
                                      color: kBlack,
                                      fontFamily: 'STCForward-Bold'),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor: kPink),
                                        child: Checkbox(
                                          value: value,
                                          checkColor:
                                              kWhite, // color of tick Mark
                                          activeColor: kPink,

                                          onChanged: (value) {
                                            setState(() {
                                              this.value = !value;
                                            });
                                            print(value);
                                          },
                                        ),
                                      ),
                                      Text(
                                        'English',
                                        style: TextStyle(
                                            color: kBlack,
                                            fontSize: 16.0,
                                            fontFamily: 'STCForward-Regular'),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    color: kGrey,
                                    thickness: 1,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor: kPink),
                                        child: Checkbox(
                                          value: false,
                                          checkColor:
                                              kWhite, // color of tick Mark
                                          activeColor: kPink,
                                          onChanged: (value) {
                                            setState(() {
                                              this.value = !value;
                                            });
                                            print(value);
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Urdu',
                                        style: TextStyle(
                                            color: kBlack,
                                            fontSize: 16.0,
                                            fontFamily: 'STCForward-Regular'),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    color: kGrey,
                                    thickness: 1,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor: kPink),
                                        child: Checkbox(
                                          value: false,
                                          checkColor:
                                              kWhite, // color of tick Mark
                                          activeColor: kPink,
                                          onChanged: (value) {
                                            setState(() {
                                              this.value = !value;
                                            });
                                            print(value);
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Hindi',
                                        style: TextStyle(
                                            color: kBlack,
                                            fontSize: 16.0,
                                            fontFamily: 'STCForward-Regular'),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    color: kGrey,
                                    thickness: 1,
                                  ),
                                ],
                              ),
                              _multiLanguage(),
                            ],
                          ),
                        ),
                        // multipleLang()
                      ],
                    ),
                  ],
                ),

                // ListTiles++
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: this._getBottomAppBar(),
    );
  }

  Widget _getBottomAppBar() {
    return FlatButton(
      onPressed: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 40.0,
        color: kPink,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            'Continue',
            style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  //  Input field

  Widget _buildPasswordTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Enter Task title',
        focusColor: kPurple,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: kGrey, width: 2.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kPurple, width: 2.0),
        ),
      ),
    );
  }

  //Multiple line textfield

  final _controller = TextEditingController();

  Widget _buildMultilineTextField() {
    return TextField(
      controller: this._controller,
      maxLines: 5,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        // counterText: '${this._controller.text.split(' ').length} words',
        hintText: 'Type task description',
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPurple, width: 2.0),
        ),
      ),
      onChanged: (text) => setState(() {}),
    );
  }

  Widget _multiLanguage() {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 30),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          print('button clicked 123');
          multipleLang();
        },
        child: TextField(
          readOnly: true,
          decoration: InputDecoration(
            hintText: 'Other Languages',
            suffixIcon: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: kPurple,
              ),
              onPressed: () {
                multipleLang();
                print('icon clicked');
              },
            ),
          ),
        ),
      ),
    );
  }

  void multipleLang() {
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
                child: Column(children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 15),
                    child: Row(
                      children: [
                        Text(
                          'Other Languages',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'STCForward-Bold',
                              color: kBlack),
                        ),
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
                  //checkboxes
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 20, top: 30, bottom: 10),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor: kPink),
                                        child: Checkbox(
                                          value: value,
                                          checkColor:
                                              kWhite, // color of tick Mark
                                          activeColor: kPink,

                                          onChanged: (value) {
                                            setState(() {
                                              this.value = !value;
                                            });
                                            print(value);
                                          },
                                        ),
                                      ),
                                      Text(
                                        'English',
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
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor: kPink),
                                        child: Checkbox(
                                          value: value,
                                          checkColor:
                                              kWhite, // color of tick Mark
                                          activeColor: kPink,

                                          onChanged: (value) {
                                            setState(() {
                                              this.value = !value;
                                            });
                                            print(value);
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Spanish',
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
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor: kPink),
                                        child: Checkbox(
                                          value: value,
                                          checkColor:
                                              kWhite, // color of tick Mark
                                          activeColor: kPink,

                                          onChanged: (value) {
                                            setState(() {
                                              this.value = !value;
                                            });
                                            print(value);
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Portuguese',
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
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor: kPink),
                                        child: Checkbox(
                                          value: value,
                                          checkColor:
                                              kWhite, // color of tick Mark
                                          activeColor: kPink,

                                          onChanged: (value) {
                                            setState(() {
                                              this.value = !value;
                                            });
                                            print(value);
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Italian',
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //checkboxes end
                  FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      color: kPink,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17.0),
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

  double get _horizontalTitlePadding {
    const kBasePadding = 26.0;
    const kMultiplier = 0.5;
    print('moved');
    if (_scrollController.hasClients) {
      print('working');
    } else {
      print('not working');
    }

    if (_scrollController.hasClients) {
      if (_scrollController.offset < (kExpandedHeight / 2)) {
        // In case 50%-100% of the expanded height is viewed
        return kBasePadding;
      }

      if (_scrollController.offset > (kExpandedHeight - kToolbarHeight)) {
        // In case 0% of the expanded height is viewed
        return (kExpandedHeight / 2 - kToolbarHeight) * kMultiplier +
            kBasePadding;
      }

      // In case 0%-50% of the expanded height is viewed
      return (_scrollController.offset - (kExpandedHeight / 2)) * kMultiplier +
          kBasePadding;
    }

    return kBasePadding;
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
      height: 56.0,
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
