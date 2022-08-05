import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player_01/cloud_computing.dart';
import 'package:video_player_01/cyber_security.dart';
import 'package:video_player_01/data_base.dart';
import 'package:video_player_01/machine_learning.dart';
import 'package:video_player_01/settings_screen.dart';
import 'package:video_player_01/video_info.dart';
import 'package:video_player_01/web_dev.dart';
import 'CarouselWithDotsPage.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: TextStyle(color: Colors.red),
    ),
    Text(
      'Index 1: Business',
      style: TextStyle(color: Colors.red),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        Get.to(() => SettingsScreen());
        // _selectedIndex = 0;
      }
    });
  }

  List info = [
    {
      "title": "Android",
      "img": "assets/—Pngtree—beautiful android logo vector glyph_5181796.png"
    },
    {"title": "Cyber Security", "img": "assets/hacker.png"},
    {"title": "Web-D", "img": "assets/programming.png"},
    {"title": "Databases", "img": "assets/database.png"},
    {"title": "ML", "img": "assets/machine-learning.png"},
    {"title": "Cloud Comp.", "img": "assets/server.png"},
    {"title": "Dev Ops", "img": "assets/agile.png"}
  ];

  List corousal = [
    {"name": "Web Development"},
    {"name": "Web Development"},
    {"name": "Web Development"}
  ];

  // _initData() {
  //   DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
  //     info = json.decode(value);
  //   });
  // }

  // @override
  // void initstate() {
  //   super.initState();
  //   _initData();
  // }

  final List<String> imgList = [
    'https://media.istockphoto.com/photos/devops-concept-picture-id1354729632?s=612x612',
    'https://images.unsplash.com/photo-1607252650355-f7fd0460ccdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW5kcm9pZCUyMGFwcCUyMGRldmVsb3BtZW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/digital-cloud-security-background-concept-picture-id1331943958?b=1&k=20&m=1331943958&s=170667a&w=0&h=rgUhLZ3zSEoCI07y3dx1LWKne-bEp8qfjMC6dXsbtWU=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(children: [
          Row(children: [
            Text(
              "HOME",
              style: TextStyle(
                fontSize: 30,
                color: color.AppColor.homePageTitle,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(child: Container()),
            Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: color.AppColor.homePageIcons,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.calendar_today_outlined,
              size: 30,
              color: color.AppColor.homePageIcons,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 30,
              color: color.AppColor.homePageIcons,
            ),
          ]),
          SizedBox(
            height: 25,
          ),
          Row(children: [
            Text(
              "Start Learning",
              style: TextStyle(
                fontSize: 23,
                color: color.AppColor.homePageSubtitle,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: () {
                Get.to(() => VideoInfo());
              },
              child: Text(
                "Info",
                style: TextStyle(
                  fontSize: 23,
                  color: color.AppColor.homePageDetail,
                ),
              ),
            ),
            SizedBox(
              width: 3,
            ),
            InkWell(
              onTap: () {
                Get.to(() => VideoInfo());
              },
              child: Icon(
                Icons.arrow_forward,
                size: 23,
                color: color.AppColor.homePageIcons,
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Container(
            child: CarouselWithDotsPage(imgList: imgList),
          ),

          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 200,
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: [
          //           color.AppColor.gradientFirst.withOpacity(0.8),
          //           color.AppColor.gradientSecond.withOpacity(0.9),
          //         ],
          //         begin: Alignment.bottomLeft,
          //         end: Alignment.centerRight,
          //       ),
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(10),
          //           bottomLeft: Radius.circular(10),
          //           bottomRight: Radius.circular(10),
          //           topRight: Radius.circular(80)),
          //       boxShadow: [
          //         BoxShadow(
          //             offset: Offset(5, 10),
          //             blurRadius: 20,
          //             color: color.AppColor.gradientSecond.withOpacity(0.2))
          //       ]),
          //   child: Container(
          //     padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           "Next Workout",
          //           style: TextStyle(
          //             fontSize: 16,
          //             color: color.AppColor.homePageContainerTextSmall,
          //           ),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "Legs toning",
          //           style: TextStyle(
          //             fontSize: 25,
          //             color: color.AppColor.homePageContainerTextSmall,
          //           ),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text(
          //           "and Glutes workout",
          //           style: TextStyle(
          //             fontSize: 16,
          //             color: color.AppColor.homePageContainerTextSmall,
          //           ),
          //         ),
          //         SizedBox(
          //           height: 25,
          //         ),
          //         Row(
          //           crossAxisAlignment: CrossAxisAlignment.end,
          //           children: [
          //             Row(
          //               children: [
          //                 Icon(
          //                   Icons.timer,
          //                   size: 20,
          //                   color: color.AppColor.homePageContainerTextSmall,
          //                 ),
          //                 SizedBox(
          //                   width: 10,
          //                 ),
          //                 Text(
          //                   "60 min",
          //                   style: TextStyle(
          //                     fontSize: 14,
          //                     color: color.AppColor.homePageContainerTextSmall,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Expanded(child: Container()),
          //             Container(
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(60),
          //                   boxShadow: [
          //                     BoxShadow(
          //                       color: color.AppColor.gradientFirst,
          //                       blurRadius: 10,
          //                       offset: Offset(4, 8),
          //                     )
          //                   ]),
          //               child: Icon(
          //                 Icons.play_circle_fill,
          //                 color: Colors.white,
          //                 size: 60,
          //               ),
          //             ),
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),

          // (Stack) // Container(
          //   height: 180,
          //   width: MediaQuery.of(context).size.width,
          //   child: Stack(
          //     children: [
          //       Container(
          //         margin: const EdgeInsets.only(
          //           top: 30,
          //         ),
          //         height: 120,
          //         width: MediaQuery.of(context).size.width,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(20),
          //             image: DecorationImage(
          //                 image: AssetImage("assets/card.jpg"),
          //                 fit: BoxFit.fill),
          //             boxShadow: [
          //               BoxShadow(
          //                 blurRadius: 40,
          //                 offset: Offset(40, 10),
          //                 color: color.AppColor.gradientSecond.withOpacity(0.3),
          //               ),
          //               BoxShadow(
          //                 blurRadius: 10,
          //                 offset: Offset(-1, -5),
          //                 color: color.AppColor.gradientSecond.withOpacity(0.3),
          //               )
          //             ]),
          //       ),
          //       Container(
          //         width: MediaQuery.of(context).size.width,
          //         height: 200,
          //         margin: const EdgeInsets.only(right: 200, bottom: 30),
          //         decoration: BoxDecoration(
          //             // color: Colors.redAccent.withOpacity(0.2),
          //             borderRadius: BorderRadius.circular(20),
          //             image: DecorationImage(
          //               image: AssetImage("assets/figure.png"),
          //             )),
          //       ),
          //       Container(
          //         width: double.maxFinite,
          //         height: 100,
          //         margin: const EdgeInsets.only(left: 150, top: 50),
          //         child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 "You are doing great",
          //                 style: TextStyle(
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.bold,
          //                   color: color.AppColor.homePageDetail,
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               RichText(
          //                 text: TextSpan(
          //                     text: "Keep it Up",
          //                     style: TextStyle(
          //                       fontSize: 16,
          //                       color: color.AppColor.homePagePlanColor,
          //                     ),
          //                     children: [
          //                       TextSpan(text: "\nStick to your plan")
          //                     ]),
          //               ),
          //             ]),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Recommended",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: color.AppColor.homePageTitle),
              )
            ],
          ),
          Expanded(
            child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: (info.length.toDouble() / 2).toInt(),
                  itemBuilder: (_, index) {
                    int a = 2 * index;
                    int b = 2 * index + 1;
                    return Row(
                      children: [
                        InkWell(
                          onTap: () {
                            debugPrint("$index");
                            if (b == 3 && a == 2)
                              Get.to(() => WebDev());
                            else if (b == 5 && a == 4)
                              Get.to(() => MachineLearning());
                            else
                              Get.to(() => VideoInfo());
                          },
                          child: Container(
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            height: 210,
                            margin: EdgeInsets.only(
                              left: 30,
                              bottom: 30,
                              top: 20,
                            ),
                            padding: EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                      info[a]['img'],
                                    ),
                                    fit: BoxFit.scaleDown),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      offset: Offset(5, 5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1)),
                                  BoxShadow(
                                      blurRadius: 5,
                                      offset: Offset(-5, -5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1))
                                ]),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  info[a]['title'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: color.AppColor.homePageDetail),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              if (b == 1 && a == 0)
                                Get.to(() => CyberSecurity());
                              else if (a == 2 && b == 3)
                                Get.to(() => DataBase());
                              else
                                Get.to(() => CloudComp());
                            },
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              height: 210,
                              margin: EdgeInsets.only(
                                left: 30,
                                bottom: 30,
                                top: 15,
                              ),
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(info[b]['img'])),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        offset: Offset(5, 5),
                                        color: color.AppColor.gradientSecond
                                            .withOpacity(0.1)),
                                    BoxShadow(
                                        blurRadius: 5,
                                        offset: Offset(-5, -5),
                                        color: color.AppColor.gradientSecond
                                            .withOpacity(0.1))
                                  ]),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[b]['title'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: color.AppColor.homePageDetail),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    );
                  },
                ),
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 55,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 55,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
