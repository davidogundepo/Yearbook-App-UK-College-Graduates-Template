import 'package:cached_network_image/cached_network_image.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';
import '../notifier/year_13_class_c_notifier.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


String callFIRST = "tel:+44";
String smsFIRST = "sms:+44";
String whatsAppFIRST = "https://api.whatsapp.com/send?phone=+44";
String whatsAppSECOND = "&text=Hello%20";
String whatsAppTHIRD = ",%20How%20are%20you%20doing%20today?";
String mailFIRST = "mailto:";
String mailSECOND = "?subject=Hello ";
String urlTwitter = "https://twitter.com/";
String urlFacebook = "https://facebook.com/";
String urlInstagram = "https://www.instagram.com/";
String urlSnapchat = "https://www.snapchat.com/add/";
String urlTikTok = "https://www.tiktok.com/@";

String schoolName = "AAB College";

String reachDetails = "Contacts";
String autoBioDetails = "AutoBiography";

String callButton = "Call";
String messageButton = "Send a Message";
String whatsAppButton = "Send a WhatsApp Message";
String emailButton = "Send an Email";
String twitterButton = "My Twitter";
String instagramButton = "My Instagram";
String facebookButton = "My Facebook";
String snapchatButton = "My Snapchat";
String tikTokButton = "My TikTok";

String autobiographyTitle = "Autobiography\n";
String nicknameTitle = "My Nickname\n";
String bestMomentTitle = "Best Moment in $schoolName\n";
String worstMomentTitle = "Worst Moment in $schoolName\n";
String dreamUniversityTitle = "Dream University\n";
String dreamUniversityCourseTitle = "Dream University Course of Study\n";
String dobTitle = "Date of Birth\n";
String prefectPositionTitle = "Position Held as a Prefect\n";
String regionOfOriginTitle = "Region of Origin\n";
String countryTitle = "Nationality\n";
String chosenSubjectsTitle = "Chosen A-Level Subjects of Study\n";
String favWatchedMovieTitle = "My Favourite Movie\n";
String favSchoolActivityTitle = "Favourite School Activity\n";
String favSportInCampusTitle = "Favourite Sport Activity on Campus\n";
String favClassmateTitle = "Favourite Classmate\n";
String favPlaceInCampusTitle = "Favourite Place in School Campus\n";
String hobbiesTitle = "Hobbies\n";
String philosophyTitle = "Philosophy about Life\n";
String droplineTitle = "Dropline to My Junior $schoolName Colleagues\n";

String facebookProfileSharedPreferencesTitle = "Manual Website Search";
String facebookProfileSharedPreferencesContentOne= "Apparently, you'd need to search manually for ";
String facebookProfileSharedPreferencesContentTwo = ", on Facebook.com";
String facebookProfileSharedPreferencesButton = "Go to Facebook";
String facebookProfileSharedPreferencesButtonTwo = "Lol, No";


Color backgroundColor = Color.fromRGBO(198, 155, 123, 1);
Color appBarTextColor = Colors.white;
Color appBarBackgroundColor = Color.fromRGBO(198, 155, 123, 1);
Color appBarIconColor = Colors.white;
Color materialBackgroundColor = Colors.transparent;
Color shapeDecorationColor = Color.fromRGBO(198, 155, 123, 1);
Color shapeDecorationTextColor = Color.fromRGBO(198, 155, 123, 1);
Color cardBackgroundColor = Colors.white;
Color splashColor = Colors.white;
Color splashColorTwo = Color.fromRGBO(198, 155, 123, 1);
Color iconTextColor = Colors.white;
Color iconTextColorTwo = Color.fromRGBO(198, 155, 123, 1);
Color buttonColor = Color.fromRGBO(198, 155, 123, 1);
Color textColor = Color.fromRGBO(198, 155, 123, 1);
Color confettiColorOne = Colors.green;
Color confettiColorTwo = Colors.blue;
Color confettiColorThree = Colors.pink;
Color confettiColorFour = Colors.orange;
Color confettiColorFive = Colors.purple;
Color confettiColorSix = Colors.brown;
Color confettiColorSeven = Colors.white;
Color confettiColorEight = Colors.blueGrey;
Color confettiColorNine = Colors.redAccent;
Color confettiColorTen = Colors.teal;
Color confettiColorEleven = Colors.indigoAccent;
Color confettiColorTwelve = Colors.cyan;



Year13ClassCNotifier year13ClassCNotifier;

Map<int, Widget> userBIO;

var _autoBio;
var _bestMoment;
var _dob;
var _dreamUniversity;
var _dreamUniversityCourse;
var _email;
var _facebook;
var _hobbies;
var _instagram;
var _myDropline;
var _name;
var _nickname;
var _philosophy;
var _phone;
var _prefect;
var _prefectPosition;
var _country;
var _regionFrom;
var _snapchat;
var _tikTok;
var _chosenSubjects;
var _favSchoolActivity;
var _favClassmate;
var _favPlaceInCampus;
var _favSportInCampus;
var _favWatchedMovie;
var _twitter;
var _worstMoment;

class Year13ClassCDetailsPage extends StatefulWidget {
  Year13ClassCDetailsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Year13ClassCDetailsPage createState() => _Year13ClassCDetailsPage();
}

class _Year13ClassCDetailsPage extends State<Year13ClassCDetailsPage> {
  ConfettiController _confettiController;

  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  Future launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text("The required App not installed")));
    }
  }

  @override
  Widget build(BuildContext context) {

    year13ClassCNotifier = Provider.of<Year13ClassCNotifier>(context, listen: true);

    return ConfettiWidget(
      confettiController: _confettiController,
      blastDirectionality: BlastDirectionality.explosive,
      shouldLoop: false,
      colors: [
        confettiColorOne,
        confettiColorTwo,
        confettiColorThree,
        confettiColorFour,
        confettiColorFive,
        confettiColorSix,
        confettiColorSeven,
        confettiColorEight,
        confettiColorNine,
        confettiColorTen,
        confettiColorEleven,
        confettiColorTwelve,
      ],
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            year13ClassCNotifier.currentYear13ClassC.nickname,
            style: GoogleFonts.sanchez(
                color: appBarTextColor, fontSize: 25, fontWeight: FontWeight.w400),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          elevation: 10,
          backgroundColor: appBarBackgroundColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: appBarIconColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Tooltip(
                  child: Container(
                    width: MediaQuery.of(context).size.width,

//                  foregroundDecoration: const BoxDecoration(
//                    image: DecorationImage(
//                        image: NetworkImage(
//                            'https://p6.storage.canalblog.com/69/50/922142/85510911_o.png'),
//                        fit: BoxFit.fill),
//                  ),
                    child: Card(
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: CachedNetworkImage(
                        imageUrl: year13ClassCNotifier.currentYear13ClassC.image,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            Icon(MdiIcons.alertRhombus),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  message: year13ClassCNotifier.currentYear13ClassC.name),
              Material(
                color: materialBackgroundColor,
                child: InkWell(
                  splashColor: shapeDecorationColor.withOpacity(0.20),
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              shapeDecorationColor.withOpacity(0.70),
                          width: 4.0,
                          style: BorderStyle.solid),
                    ),
                    margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              year13ClassCNotifier.currentYear13ClassC.name.toUpperCase(),
                              style: GoogleFonts.blinker(
                                  color: shapeDecorationTextColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                            (() {
                              if (year13ClassCNotifier.currentYear13ClassC.prefect == "Yes") {
                                return
                                  Row(
                                    children: <Widget>[
                                      SizedBox(width: 10),
                                      Icon (
                                        MdiIcons.shieldCheck,
                                        color: shapeDecorationTextColor,
                                      ),
                                    ],
                                  );
                              } else {
                                return Visibility(
                                  visible: !_isVisible,
                                  child: Icon (
                                    MdiIcons.shieldCheck,
                                    color: shapeDecorationTextColor,
                                  ),
                                );
                              }
                            }()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                color: cardBackgroundColor,
                margin: EdgeInsets.all(10),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 8.0, right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: CupertinoSlidingSegmentedControl<int>(
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                          thumbColor: cardBackgroundColor,
                          backgroundColor:
                          shapeDecorationColor.withAlpha(50),
                          children: {
                            0: Text(
                              reachDetails,
                              style: GoogleFonts.sacramento(
                                  color: shapeDecorationTextColor,
                                  fontSize: 25,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400),
                            ),
                            1: Text(
                              autoBioDetails,
                              style: GoogleFonts.sacramento(
                                color: shapeDecorationTextColor,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          },
                          onValueChanged: (int val) {
                            setState(() {
                              sharedValue = val;
                            });
                          },
                          groupValue: sharedValue,
                        ),
                      ),
                      userBIO[sharedValue],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  initState() {
    _confettiController = ConfettiController(duration: const Duration(seconds: 35));
    _confettiController.play();

    Year13ClassCNotifier year13ClassCNotifier = Provider.of<Year13ClassCNotifier>(context, listen: false);

    _autoBio = year13ClassCNotifier.currentYear13ClassC.autoBio;
    _bestMoment = year13ClassCNotifier.currentYear13ClassC.bestMoment;
    _dob = year13ClassCNotifier.currentYear13ClassC.dob;
    _dreamUniversity = year13ClassCNotifier.currentYear13ClassC.dreamUniversity;
    _dreamUniversityCourse = year13ClassCNotifier.currentYear13ClassC.dreamUniversityCourse;
    _email = year13ClassCNotifier.currentYear13ClassC.email;
    _facebook = year13ClassCNotifier.currentYear13ClassC.facebook;
    _hobbies = year13ClassCNotifier.currentYear13ClassC.hobbies;
    _instagram = year13ClassCNotifier.currentYear13ClassC.instagram;
    _myDropline = year13ClassCNotifier.currentYear13ClassC.myDropline;
    _name = year13ClassCNotifier.currentYear13ClassC.name;
    _nickname = year13ClassCNotifier.currentYear13ClassC.nickname;
    _philosophy = year13ClassCNotifier.currentYear13ClassC.philosophy;
    _phone = year13ClassCNotifier.currentYear13ClassC.phone;
    _prefect = year13ClassCNotifier.currentYear13ClassC.prefect;
    _prefectPosition = year13ClassCNotifier.currentYear13ClassC.positionEnforced;
    _country = year13ClassCNotifier.currentYear13ClassC.constituentCountry;
    _regionFrom = year13ClassCNotifier.currentYear13ClassC.regionFrom;
    _twitter = year13ClassCNotifier.currentYear13ClassC.twitter;
    _snapchat = year13ClassCNotifier.currentYear13ClassC.snapchat;
    _tikTok = year13ClassCNotifier.currentYear13ClassC.tikTok;
    _chosenSubjects = year13ClassCNotifier.currentYear13ClassC.chosenSubjects;
    _favSchoolActivity = year13ClassCNotifier.currentYear13ClassC.favSchoolActivity;
    _favClassmate = year13ClassCNotifier.currentYear13ClassC.favClassmate;
    _favPlaceInCampus = year13ClassCNotifier.currentYear13ClassC.favPlaceInCampus;
    _favSportInCampus = year13ClassCNotifier.currentYear13ClassC.favSportInCampus;
    _favWatchedMovie = year13ClassCNotifier.currentYear13ClassC.favWatchedMovie;
    _worstMoment = year13ClassCNotifier.currentYear13ClassC.worstMoment;

    userBIO = <int, Widget>{
      0: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            (() {
              if (_phone.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: splashColor,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: buttonColor,
                      icon: new Icon(
                        MdiIcons.dialpad,
                        color: iconTextColor,
                      ),
                      label: Text(callButton,
                          style: GoogleFonts.abel(
                              color: iconTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        if (_phone.toString().startsWith('0')) {
                          var most = _phone.toString().substring(1);
                          launchURL(callFIRST +most);
                        }
                        else {
                          launchURL(callFIRST + _phone);
                        }
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: splashColor,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: buttonColor,
                        icon: new Icon(
                          MdiIcons.dialpad,
                          color: iconTextColor,
                        ),
                        label: Text(callButton,
                            style: GoogleFonts.abel(
                                color: iconTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(callFIRST + _phone);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            
            (() {
              if (_phone.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: splashColor,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: buttonColor,
                      icon: new Icon(
                        MdiIcons.message,
                        color: iconTextColor,
                      ),
                      label: Text(messageButton,
                          style: GoogleFonts.abel(
                              color: iconTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        if (_phone.toString().startsWith('0')) {
                          var most = _phone.toString().substring(1);
                          launchURL(smsFIRST +most);
                        }
                        else {
                          launchURL(smsFIRST + _phone);
                        }
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: splashColor,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: buttonColor,
                        icon: new Icon(
                          MdiIcons.message,
                          color: iconTextColor,
                        ),
                        label: Text(messageButton,
                            style: GoogleFonts.abel(
                                color: iconTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(smsFIRST + _phone);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            
            (() {
              if (_phone.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: splashColor,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: buttonColor,
                      icon: new Icon(
                        MdiIcons.whatsapp,
                        color: iconTextColor,
                      ),
                      label: Text(whatsAppButton,
                          style: GoogleFonts.abel(
                              color: iconTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        if (_phone.toString().startsWith('0')) {
                          var most = _phone.toString().substring(1);
                          var firstName = _name.toString().substring(0, _name.toString().indexOf(" "));
                          launchURL(whatsAppFIRST + most + whatsAppSECOND + firstName + whatsAppTHIRD);
                        }
                        else {
                          var firstName = _name.toString().substring(0, _name.toString().indexOf(" "));
                          launchURL(whatsAppFIRST + _phone + whatsAppSECOND + firstName + whatsAppTHIRD);
                        }
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: splashColor,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: buttonColor,
                        icon: new Icon(
                          MdiIcons.message,
                          color: iconTextColor,
                        ),
                        label: Text(messageButton,
                            style: GoogleFonts.abel(
                                color: iconTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(smsFIRST + _phone);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            
            (() {
              if (_email.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: splashColor,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: buttonColor,
                      icon: new Icon(
                        MdiIcons.gmail,
                        color: iconTextColor,
                      ),
                      label: Text(emailButton,
                          style: GoogleFonts.abel(
                              color: iconTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        launchURL(mailFIRST + _email + mailSECOND + _name);
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: splashColor,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: buttonColor,
                        icon: new Icon(
                          MdiIcons.gmail,
                          color: iconTextColor,
                        ),
                        label: Text(emailButton,
                            style: GoogleFonts.abel(
                                color: iconTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(mailFIRST + _email + mailSECOND + _name);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),

            (() {
              if (_twitter.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: splashColorTwo,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 2,
                      color: buttonColor,
                      icon: new Icon(MdiIcons.twitter, color: iconTextColor),
                      label: Text(twitterButton,
                          style: GoogleFonts.abel(
                              color: iconTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300
                          )
                      ),
                      onPressed: () {
                        if (_twitter.toString().startsWith('@')) {
                          var most = _twitter.toString().substring(1);
                          launchURL(urlTwitter + most);
                        }
                        else {
                          launchURL(urlTwitter + _twitter);
                        }
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: splashColorTwo,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        elevation: 2,
                        color: buttonColor,
                        icon: new Icon(MdiIcons.twitter, color: iconTextColor),
                        label: Text(twitterButton,
                            style: GoogleFonts.abel(
                                color: iconTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w300
                            )
                        ),
                        onPressed: () {
                          launchURL(urlTwitter+_twitter);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),

            (() {
              if (_instagram.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: splashColorTwo,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: buttonColor,
                      icon: new Icon(
                        MdiIcons.instagram,
                        color: iconTextColor,
                      ),
                      label: Text(instagramButton,
                          style: GoogleFonts.abel(
                              color: iconTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        if (_instagram.toString().startsWith('@')) {
                          var most = _instagram.toString().substring(1);
                          launchURL(urlInstagram + most);
                        }
                        else {
                          launchURL(urlInstagram + _instagram);
                        }
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                    visible: !_isVisible,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        splashColor: splashColorTwo,
                        child: RaisedButton.icon(
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 2,
                          color: buttonColor,
                          icon: new Icon(
                            MdiIcons.instagram,
                            color: iconTextColor,
                          ),
                          label: Text(instagramButton,
                              style: GoogleFonts.abel(
                                  color: iconTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300)),
                          onPressed: () {
                            launchURL(urlInstagram + _instagram);
                          },
                        ),
                      ),
                    ));
              }
            }()),

            (() {
              if (_snapchat.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: splashColorTwo,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: buttonColor,
                      icon: new Icon(
                        MdiIcons.snapchat,
                        color: iconTextColor,
                      ),
                      label: Text(snapchatButton,
                          style: GoogleFonts.abel(
                              color: iconTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        if (_snapchat.toString().startsWith('@')) {
                          var most = _instagram.toString().substring(1);
                          launchURL(urlSnapchat + most);
                        }
                        else {
                          launchURL(urlSnapchat + _snapchat);
                        }
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: splashColorTwo,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: buttonColor,
                        icon: new Icon(
                          MdiIcons.snapchat,
                          color: iconTextColorTwo,
                        ),
                        label: Text(snapchatButton,
                            style: GoogleFonts.abel(
                                color: iconTextColorTwo,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(urlSnapchat + _snapchat);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),

            (() {
              if (_tikTok.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: splashColorTwo,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: buttonColor,
                      icon: new FaIcon(
                        FontAwesomeIcons.tiktok,
                        color: iconTextColor,
                      ),
                      label: Text(tikTokButton,
                          style: GoogleFonts.abel(
                              color: iconTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        if (_tikTok.toString().startsWith('@')) {
                          var most = _tikTok.toString().substring(1);
                          launchURL(urlTikTok + most);
                        }
                        else {
                          launchURL(urlTikTok + _tikTok);
                        }
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: splashColorTwo,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: buttonColor,
                        icon: new FaIcon(
                          FontAwesomeIcons.tiktok,
                          color: iconTextColorTwo,
                        ),
                        label: Text(tikTokButton,
                            style: GoogleFonts.abel(
                                color: iconTextColorTwo,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(urlTikTok + _tikTok);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            
            (() {
              if (_facebook.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: splashColor,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: buttonColor,
                      icon: new Icon(
                        MdiIcons.facebook,
                        color: iconTextColor,
                      ),
                      label: Text(
                        facebookButton,
                        style: GoogleFonts.abel(
                            color: iconTextColor,
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed,
                            fontWeight: FontWeight.w300),
                      ),
                      onPressed: () {
                        facebookLink();
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: splashColor,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: buttonColor,
                        icon: new Icon(
                          MdiIcons.facebook,
                          color: iconTextColor,
                        ),
                        label: Text(
                          facebookButton,
                          style: GoogleFonts.abel(
                              color: iconTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                        onPressed: () {
                          launchURL(urlFacebook + _facebook);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
          ],
        ),
      ),

      1: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[


          (() {
            if (_autoBio.toString().isNotEmpty) {
              return Container(
                child: Material(
                  color: materialBackgroundColor,
                  child: InkWell(
                    splashColor: splashColorTwo,
                    onTap: () {},
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: autobiographyTitle,
                                style: GoogleFonts.aBeeZee(
                                  color: textColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: ' ' + _autoBio,
                                style: GoogleFonts.trykker(
                                  color: textColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w300,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: textColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(10)),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Container(
                    child: Material(
                      color: materialBackgroundColor,
                      child: InkWell(
                        splashColor: splashColorTwo,
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, top: 15, left: 25),
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: autobiographyTitle,
                                    style: GoogleFonts.aBeeZee(
                                      color: textColor,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                    text: ' ' + _autoBio,
                                    style: GoogleFonts.trykker(
                                      color: textColor,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w300,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: buttonColor.withAlpha(50),
                        borderRadius: new BorderRadius.circular(10)),
                  ));
            }
          }()),

          (() {
            if (_nickname.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: nicknameTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _nickname,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: nicknameTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _nickname,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_bestMoment.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: bestMomentTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _bestMoment,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: bestMomentTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _bestMoment,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),
          
          (() {
            if (_worstMoment.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: worstMomentTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _worstMoment,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: worstMomentTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _worstMoment,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_prefect.toString() == "Yes") {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: prefectPositionTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _prefectPosition,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: prefectPositionTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _prefectPosition,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_chosenSubjects.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: chosenSubjectsTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _chosenSubjects,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: chosenSubjectsTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _chosenSubjects,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_favClassmate.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: favClassmateTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _favClassmate,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: favClassmateTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _favClassmate,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_favSchoolActivity.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: favSchoolActivityTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _favSchoolActivity,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: favSchoolActivityTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _favSchoolActivity,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_favPlaceInCampus.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: favPlaceInCampusTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _favPlaceInCampus,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: favPlaceInCampusTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _favPlaceInCampus,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_favSportInCampus.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: favSportInCampusTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _favSportInCampus,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: favSportInCampusTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _favSportInCampus,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_favWatchedMovie.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: favWatchedMovieTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _favWatchedMovie,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: favWatchedMovieTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _favWatchedMovie,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_dreamUniversity.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: dreamUniversityTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _dreamUniversity,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: dreamUniversityTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _dreamUniversity,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_dreamUniversityCourse.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: dreamUniversityCourseTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _dreamUniversityCourse,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: dreamUniversityCourseTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _dreamUniversityCourse,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_dob.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: dobTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _dob,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: dobTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _dob,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_regionFrom.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: regionOfOriginTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _regionFrom,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: regionOfOriginTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _regionFrom,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_country.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: countryTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _country,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: countryTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _country,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_hobbies.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: hobbiesTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _hobbies,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: hobbiesTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _hobbies,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),
          
          (() {
            if (_philosophy.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: philosophyTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _philosophy,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: philosophyTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _philosophy,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

          (() {
            if (_myDropline.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: materialBackgroundColor,
                    child: InkWell(
                      splashColor: splashColorTwo,
                      onTap: () {},
                      child: Padding(
                        padding:
                        const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: droplineTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _myDropline,
                                  style: GoogleFonts.trykker(
                                    color: textColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: textColor.withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: materialBackgroundColor,
                        child: InkWell(
                          splashColor: splashColorTwo,
                          onTap: () {},
                          child: Padding(
                            padding:
                            const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: droplineTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _myDropline,
                                      style: GoogleFonts.trykker(
                                        color: textColor,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: textColor.withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  )
              );
            }
          }()),

        ],
      ),
    };
    super.initState();
  }

  int sharedValue = 0;


  facebookLink() async {

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),

        ),
        backgroundColor: backgroundColor,
        title: Text(
          facebookProfileSharedPreferencesTitle,
          style: TextStyle(
              color: cardBackgroundColor
          ),
        ),
        content: Text(
          facebookProfileSharedPreferencesContentOne + _facebook + facebookProfileSharedPreferencesContentTwo,
          textAlign: TextAlign.justify,
          style: TextStyle(
              color: cardBackgroundColor
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              launchURL(urlFacebook);
              Toast.show("Loading up Facebook.com",
                  duration:
                  Toast.lengthLong,
                  gravity:  Toast.bottom,
                  webTexColor: cardBackgroundColor,
                  backgroundColor: backgroundColor,
                  backgroundRadius: 10
              );
            },
            child: Text(facebookProfileSharedPreferencesButton,
              style: TextStyle(
                  color: cardBackgroundColor
              ),
            ),
          ),
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(facebookProfileSharedPreferencesButtonTwo,
              style: TextStyle(
                  color: cardBackgroundColor
              ),
            ),
          ),

        ],
      ),
    );
//    }
  }


@override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

}
