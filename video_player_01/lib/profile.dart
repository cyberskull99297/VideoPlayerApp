import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player_01/HomePage.dart';
import 'package:video_player_01/settings_screen.dart';
import 'package:video_player_01/video_info.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    double blockSizeHorizontal = screenWidth / 100;
    double blockSizeVertical = screenHeight / 100;
    double _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    double _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    double safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    double safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;

    // SizeConfig().init(context);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 0, 86, 177),
          child: Icon(
            Icons.support_agent,
            size: 40,
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              child: Container(
                color: Color.fromARGB(255, 0, 91, 177),
                width: screenWidth,
                height: blockSizeVertical * 32,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              // SizedBox(
                              //   width: 5,
                              // ),
                              MaterialButton(
                                onPressed: () {
                                  Get.to(() => SettingsScreen());
                                },
                                color: Colors.white,
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 35,
                                ),
                                padding: EdgeInsets.all(5),
                                shape: CircleBorder(),
                              ),
                              SizedBox(
                                width: 23,
                              ),
                              Text("Welcome",
                                  style: GoogleFonts.roboto(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40)),
                            ],
                          ),
                          Text("Your Profile",
                              style: GoogleFonts.roboto(
                                  fontSize: 30, color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
                top: blockSizeVertical * 34,
              ),
              padding: EdgeInsets.only(top: blockSizeVertical * 10),
              height: blockSizeVertical * 52,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 3.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Color(0xff34495E),
                            child: Icon(
                              Icons.assessment,
                              size: 60,
                            ),
                            padding: EdgeInsets.all(25),
                            shape: CircleBorder(),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "My Progress",
                            style: GoogleFonts.roboto(
                                color: Color(0xff34495E),
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Color(0xff34495E),
                            child: Icon(
                              Icons.assignment,
                              size: 60,
                            ),
                            padding: EdgeInsets.all(25),
                            shape: CircleBorder(),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Analysis",
                            style: GoogleFonts.roboto(
                                color: Color(0xff34495E),
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          )
                        ],
                      ),

/*                      Icon(FontAwesomeIcons.truck),
                          Icon(FontAwesomeIcons.wallet),
                          Icon(FontAwesomeIcons.userAlt)*/
                    ],
                  ),
                  SizedBox(
                    height: blockSizeVertical * 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Color(0xff34495E),
                            child: Icon(
                              Icons.auto_stories,
                              size: 60,
                            ),
                            padding: EdgeInsets.all(25),
                            shape: CircleBorder(),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "My Courses",
                            style: GoogleFonts.roboto(
                                color: Color(0xff34495E),
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Color(0xff34495E),
                            child: Icon(
                              FontAwesomeIcons.listAlt,
                              size: 60,
                            ),
                            padding: EdgeInsets.all(25),
                            shape: CircleBorder(),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Certificates",
                            style: GoogleFonts.roboto(
                                color: Color(0xff34495E),
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          )
                        ],
                      ),
/*                      Icon(FontAwesomeIcons.truck),
                          Icon(FontAwesomeIcons.wallet),
                          Icon(FontAwesomeIcons.userAlt)*/
                    ],
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: SizeConfig.blockSizeHorizontal * 11,
            //       vertical: SizeConfig.blockSizeVertical * 3),
            //   child: FittedBox(
            //     child: Image.asset('assets/icon_trash2.png'),
            //     fit: BoxFit.fitWidth,
            //   ),
            //),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: blockSizeVertical * 22,
                  width: blockSizeVertical * 22,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(blockSizeVertical * 11),
                      image: DecorationImage(
                          image: AssetImage('assets/a.png'),
                          fit: BoxFit.fitWidth),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0, 2)),
                      ]),
                  margin: EdgeInsets.only(top: blockSizeVertical * 22),
                ),
              ],
            ),
          ],
        ));
  }
}
