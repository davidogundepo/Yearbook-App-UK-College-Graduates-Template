
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import '../details_pages/year_13c_details_page.dart';
import '../notifier/year_13_class_c_notifier.dart';

Color backgroundColor = Color.fromRGBO(198, 155, 123, 1);
Color appBarTextColor = Color.fromRGBO(71, 69, 69, 1.0);
Color appBarBackgroundColor = Color.fromRGBO(198, 155, 123, 1);
Color appBarIconColor = Color.fromRGBO(71, 69, 69, 1.0);
Color modalColor = Colors.transparent;
Color materialBackgroundColor = Colors.transparent;
Color cardBackgroundColor = Color.fromRGBO(71, 69, 69, 1.0);
Color splashColor = Color.fromRGBO(198, 155, 123, 1);
Color iconColor = Color.fromRGBO(71, 69, 69, 1.0);
Color textColor = Color.fromRGBO(71, 69, 69, 1.0);
Color textColorTwo = Color.fromRGBO(71, 69, 69, 1.0);
Color dialogBackgroundColor = Color.fromRGBO(198, 155, 123, 1);
Color borderColor = Colors.black;
Color textHighlightColor = Color.fromRGBO(198, 155, 123, 1);

var queryTech;

class MyYear13ClassCSearch extends SearchDelegate {

  final List all;

  bool _isVisible = true;

  MyYear13ClassCSearch({@required this.all});

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = ThemeData(
        primaryColor: appBarBackgroundColor,
        primaryIconTheme: IconThemeData(color: appBarIconColor),
        primaryColorBrightness: Brightness.light,
        textTheme: TextTheme(subtitle1: TextStyle(color: appBarTextColor, fontSize: 25)),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: appBarTextColor.withAlpha(60)),
        ),
        cursorColor: appBarTextColor
    );
    assert(theme != null);
    return theme;
  }

  Future navigateToYear13ClassCDetailsPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Year13ClassCDetailsPage()));
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    if (query.isNotEmpty) {
      return [
        Visibility(
          visible: true,
          child: IconButton(
            icon: Visibility(
                visible: true,
                child: Icon(MdiIcons.closeCircleOutline)),
            onPressed: () {
              query = '';
            },
          ),
        )
      ];
    }
    else {
      return [
        Visibility(
          visible: false,
          child: IconButton(
            icon: Visibility(
                visible: false,
                child: Icon(MdiIcons.closeCircleOutline)),
            onPressed: () {
              query = '';
            },
          ),
        )
      ];
    }
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(MdiIcons.chevronTripleLeft),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    var query1;
    var query2 = " ";
    if (query.length != 0) {
      query1 = query.toLowerCase();
      query2 = query1[0].toUpperCase() + query1.substring(1);
    }

    var search = all.where((year13ClassC) => year13ClassC.name.contains(query2)).toList();

    return search == null
        ? _buildProgressIndicator()
        : _buildSearchList(search);
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    var query1;
    queryTech = "";
    if (query.length != 0) {
      query1 = query.toLowerCase();
      queryTech = query1[0].toUpperCase() + query1.substring(1);
    }

    var search;

    if(queryTech.isNotEmpty){
      search =all.where((year13ClassC) => year13ClassC.name.contains(queryTech)).toList();


    }else{
      search = all;
    }

    return search == null
        ? _buildProgressIndicator()
        : _buildSearchList(search);
  }

  _buildSearchList(List search) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: search == null ? 0 : search.length,
              itemBuilder: (BuildContext context, int position) {

                Year13ClassCNotifier year13ClassCNotifier = Provider.of<Year13ClassCNotifier>(context);
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: borderColor.withAlpha(50),
                    ),

                    child: Material(
                      color: materialBackgroundColor,
                      child: InkWell(
                        splashColor: splashColor,
                        onTap: () {
                          year13ClassCNotifier.currentYear13ClassC = search[position];
                          navigateToYear13ClassCDetailsPage(context);
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
                                            search[position].image
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
                                          RichText(
                                            text: TextSpan(
                                                text: search[position].name.substring(0, queryTech.length),
                                                style: GoogleFonts.tenorSans(
                                                    color: textColor,
                                                    fontSize: 13.5,
                                                    fontWeight: FontWeight.w600
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: search[position].name.substring(queryTech.length),
                                                      style: GoogleFonts.tenorSans(color: textHighlightColor))
                                                ]),
                                          ),
                                          (() {
                                            if (search[position].prefect == "Yes") {
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
                                      if (search[position].twitter.toString().isNotEmpty) {
                                        if (!search[position].twitter.toString().contains("@")) {
                                          return Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                                search[position].twitter == search[position].twitter ? '@'+search[position].twitter : search[position].twitter,
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
                                                search[position].twitter,
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
                                                search[position].twitter == search[position].twitter ? '@'+search[position].twitter : search[position].twitter,
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
          ),
        ),
      ),
    );
  }

  _buildProgressIndicator() {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
      ),
    );
  }

}