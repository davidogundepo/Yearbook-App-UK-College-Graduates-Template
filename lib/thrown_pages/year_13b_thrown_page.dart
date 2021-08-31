import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../about_menu_details_pages/about_app.dart';
import '../about_menu_details_pages/about_school.dart';
import '../about_menu_details_pages/acronyms_meanings.dart';
import '../about_menu_details_pages/who_we_are.dart';
import '../thrown_searches/year_13b_thrown_search.dart';
import '../api/year_13_class_b_api.dart';
import '../bloc_navigation_bloc/navigation_bloc.dart';
import '../notifier/year_13_class_b_notifier.dart';
import 'package:provider/provider.dart';
import '../details_pages/year_13b_details_page.dart';

String schoolName = "AAB College";
String thrownName = "Year 13B Class Graduates";

String exitAppStatement = "Exit from App";
String exitAppTitle = "Come on!";
String exitAppSubtitle = "Do you really really want to?";
String exitAppNo = "Oh No";
String exitAppYes = "I Have To";

String whoWeAre = "Who We Are";
String aboutSchool = "About $schoolName";
String acronymMeanings = "Acronym Meanings";
String aboutApp = "About App";

String imgAsset = "assets/images/hallel_12.jpg";

Color backgroundColor = Color.fromRGBO(194, 178, 128, 1);
Color appBarTextColor = Colors.white;
Color appBarBackgroundColor = Color.fromRGBO(155, 134, 99, 1);
Color appBarIconColor = Colors.white;
Color modalColor = Colors.transparent;
Color modalBackgroundColor = Color.fromRGBO(194, 178, 128, 1);
Color materialBackgroundColor = Colors.transparent;
Color cardBackgroundColor = Colors.white;
Color splashColor = Color.fromRGBO(237, 209, 166, 1);
Color splashColorTwo = Colors.black87;
Color iconColor = Colors.white;
Color textColor = Colors.white;
Color textColorTwo = Colors.white70;
Color dialogBackgroundColor = Color.fromRGBO(194, 178, 128, 1);
Color borderColor = Colors.black;
Color paintColor = Colors.indigo;
Color paintColorTwo = Colors.indigoAccent;


class MyYear13ClassBPage extends StatefulWidget with NavigationStates{
  MyYear13ClassBPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyYear13ClassBPage createState() => _MyYear13ClassBPage();
}

class _MyYear13ClassBPage extends State<MyYear13ClassBPage> {

  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  Widget _buildProductItem(BuildContext context, int index) {
    Year13ClassBNotifier year13ClassBNotifier = Provider.of<Year13ClassBNotifier>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),color: borderColor.withAlpha(50),
        ),

        child: Material(
          color: materialBackgroundColor,
          child: InkWell(
          splashColor: splashColor,
            onTap: () {
              year13ClassBNotifier.currentYear13ClassB = year13ClassBNotifier.year13ClassBList[index];
              navigateToYear13ClassBDetailsPage(context);
            },

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                        image: DecorationImage(
                            alignment: Alignment(0, -1),
                            image: CachedNetworkImageProvider(
                              year13ClassBNotifier.year13ClassBList[index].image
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              children: <Widget>[
                                Text(
                                    year13ClassBNotifier.year13ClassBList[index].name,
                                    style: GoogleFonts.tenorSans(
                                        color: textColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                (() {
                                  if (year13ClassBNotifier.year13ClassBList[index].prefect == "Yes") {
                                    return
                                      Row(
                                        children: <Widget>[
                                          SizedBox(width: 10),
                                          Icon (
                                            MdiIcons.shieldCheck,
                                            color: iconColor,
                                          ),
                                        ],
                                      );
                                  } else {
                                    return Visibility(
                                      visible: !_isVisible,
                                      child: Icon (
                                        MdiIcons.shieldCheck,
                                        color: iconColor,
                                      ),
                                    );
                                  }
                                }()),
                              ],
                            ),

                          ),
                          (() {
                            if (year13ClassBNotifier.year13ClassBList[index].twitter.toString().isNotEmpty) {
                              if (!year13ClassBNotifier.year13ClassBList[index].twitter.toString().contains("@")) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                      year13ClassBNotifier.year13ClassBList[index].twitter == year13ClassBNotifier.year13ClassBList[index].twitter ? '@'+year13ClassBNotifier.year13ClassBList[index].twitter : year13ClassBNotifier.year13ClassBList[index].twitter,
                                      style: GoogleFonts.varela(
                                          color: textColorTwo,
                                          fontStyle: FontStyle.italic
                                      )
                                  ),
                                );
                              }
                              else {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                      year13ClassBNotifier.year13ClassBList[index].twitter,
                                      style: GoogleFonts.varela(
                                          color: textColorTwo,
                                          fontStyle: FontStyle.italic
                                      )
                                  ),
                                );
                              }
                            } else {
                              return Visibility(
                                visible: !_isVisible,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                      year13ClassBNotifier.year13ClassBList[index].twitter,
                                      style: GoogleFonts.varela(
                                          color: textColorTwo,
                                          fontStyle: FontStyle.italic
                                      )
                                  ),
                                ),
                              );
                            }
                          }()),

                        ],
                      ),
                    )

                  ],
                ),
              ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),

            ),
            backgroundColor: dialogBackgroundColor,
            title: Text(exitAppTitle,
              style: TextStyle(
                  color: textColor
              ),
            ),
            content: Text(exitAppSubtitle,
              style: TextStyle(
                  color: textColor
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(exitAppNo,
                  style: TextStyle(
                      color: textColor
                  ),
                ),
              ),
              FlatButton(
                onPressed: () => exit(0),
                /*Navigator.of(context).pop(true)*/
                child: Text(exitAppYes,
                  style: TextStyle(
                      color: textColor
                  ),
                ),
              ),
            ],
          ),
    ) ??
        false;
  }

  Future navigateToYear13ClassBDetailsPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Year13ClassBDetailsPage()));
  }

  Future navigateToAboutAppDetailsPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutAppDetails()));
  }
  Future navigateToAcronymsMeaningsPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AcronymsMeanings()));
  }
  Future navigateToAboutSchoolDetailsPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutSchoolDetails()));
  }
  Future navigateToWhoWeArePage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => WhoWeAre()));
  }

  @override
  void initState() {
    Year13ClassBNotifier year13ClassBNotifier = Provider.of<Year13ClassBNotifier>(context, listen: false);
    getYear13ClassB(year13ClassBNotifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Year13ClassBNotifier year13ClassBNotifier = Provider.of<Year13ClassBNotifier>(context);

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Container(
          color: backgroundColor,

          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context,
                bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(MdiIcons.formatFloatLeft, color: iconColor),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: modalColor,
                            context: context,
                            builder: (context) => Container(
                              height: 250,
                              decoration: BoxDecoration(
                                color: modalBackgroundColor,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                              ),
                              child: Material(
                                color: materialBackgroundColor,
                                child: InkWell(
                                  splashColor: splashColorTwo,
                                  child: Wrap(
                                    children: <Widget>[
                                      ListTile(
                                          leading: new Icon(MdiIcons.atom, color: iconColor),
                                          title: new Text(whoWeAre,
                                            style: GoogleFonts.zillaSlab(
                                                color: textColor
                                            ),),
                                          onTap: () {
                                            navigateToWhoWeArePage(context);
                                          }
                                      ),
                                      ListTile(
                                        leading: new Icon(MdiIcons.chessQueen, color: iconColor),
                                        title: new Text(aboutSchool,
                                        style: GoogleFonts.zillaSlab(
                                          color: textColor
                                        ),),
                                        onTap: () {
                                          navigateToAboutSchoolDetailsPage(context);
                                        },
                                      ),
                                      ListTile(
                                          leading: new Icon(MdiIcons.sortAlphabeticalAscending, color: iconColor),
                                          title: new Text(acronymMeanings,
                                            style: GoogleFonts.zillaSlab(
                                                color: textColor
                                            ),),
                                          onTap: () {
                                            navigateToAcronymsMeaningsPage(context);
                                          }
                                      ),
                                      ListTile(
                                        leading: new Icon(MdiIcons.opacity, color: iconColor),
                                        title: new Text(aboutApp,
                                          style: GoogleFonts.zillaSlab(
                                              color: textColor,
                                          ),),
                                        onTap: () {
                                          navigateToAboutAppDetailsPage(context);
                                        },
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ));
                      },
                    ),
                    IconButton(
                      icon: Icon(MdiIcons.magnify, color: iconColor),
                      onPressed: year13ClassBNotifier.year13ClassBList == null
                          ? null
                          : (){
                        showSearch(
                          context: context,
                          delegate: MyYear13ClassBSearch(all: year13ClassBNotifier.year13ClassBList),
                        );
                      },
                      tooltip: "Search",
                    ),
                  ],
                  backgroundColor: appBarBackgroundColor,
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Center(
                        heightFactor: 0.6,
                        child: Text(thrownName,
                            style: GoogleFonts.amaticSC(
                              color: textColor,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                      background: Image.asset(imgAsset,
                      fit: BoxFit.cover,
                      ),
                  ),
                ),
              ];
            },
            body: Padding(
              padding: const EdgeInsets.only(left: 25, right: 10),
              child: Container(
                margin: new EdgeInsets.only( bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ListView.builder(
                  itemBuilder: _buildProductItem,
                  itemCount: year13ClassBNotifier.year13ClassBList.length,

                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackGround extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
  Paint paint = new Paint();
  paint.color = paintColor;
  paint.strokeWidth = 100;
  paint.isAntiAlias = true;

  Paint paint2 = new Paint();
  paint2.color = paintColorTwo;
  paint2.strokeWidth = 100;
  paint2.isAntiAlias = true;

  canvas.drawLine(Offset(300, -120), Offset(size.width+60, size.width-280), paint2);
  canvas.drawLine(Offset(200, -80), Offset(size.width+60, size.width-160), paint);
  canvas.drawLine(Offset(100, -40), Offset(size.width+60, size.width-40), paint2);
  canvas.drawLine(Offset(0, 0), Offset(size.width+60, size.width+80), paint);
  canvas.drawLine(Offset(-100, 40), Offset(size.width+60, size.width+200), paint2);
  canvas.drawLine(Offset(-200, 90), Offset(size.width+60, size.width+320), paint);
  canvas.drawLine(Offset(-300, 140), Offset(size.width+60, size.width+440), paint2);
  canvas.drawLine(Offset(-400, 190), Offset(size.width+60, size.width+560), paint);
  canvas.drawLine(Offset(-500, 240), Offset(size.width+60, size.width+680), paint2);
  canvas.drawLine(Offset(-600, 290), Offset(size.width+60, size.width+800), paint);

//
//  var color = Paint();
//  color.color = Colors.green[800];
//  color.style = PaintingStyle.fill;
//
//  var create = Path();
//
//  create.moveTo(0, size.height * 0.9167);
//  create.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
//      size.width * 0.5, size.height * 0.9167);
//  create.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
//      size.width * 1.0, size.height * 0.9167);
//  create.lineTo(size.width, size.height);
//  create.lineTo(0, size.height);
//
//  canvas.drawPath(create, color);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}
