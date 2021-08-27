import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karma_app/screens/login_screen.dart';
import 'package:karma_app/screens/profile_page.dart';
import 'package:karma_app/utility/drive_widget.dart';

class KarmaDrivePage extends StatefulWidget {
  static const String id = 'karma_drive_page';

  @override
  _KarmaDrivePageState createState() => _KarmaDrivePageState();
}

class _KarmaDrivePageState extends State<KarmaDrivePage> {
  String searchBarHint = "Search here...";
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFF8400),
      body: Stack(
        children: [
          Container(
            //height: width/2.5,
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 25),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage('assets/images/profile_image.png'),
                              radius: 30,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, ProfilePage.id);
                            },
                          ),
                          // Card(
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 8.0, vertical: 2),
                          //     child: Text(
                          //       "Profile",
                          //       style: TextStyle(
                          //           color: Color(0xffFF8400),
                          //           fontFamily: "OpenSans",
                          //           fontWeight: FontWeight.w700),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      Text(
                        "Karma Drives",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "OpenSans"),
                      ),
                      OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, LoginScreen.id);
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white),
                          child: Text(
                            "LogOut",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8, 15, 8, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 0, 5, 0),
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: TextField(
                                // textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    hintText: searchBarHint,
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Color(0xff989898), fontSize: 16)),
                              )),
                          CircleAvatar(
                            child: Icon(
                              Icons.search_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            backgroundColor: Colors.black,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: height/1.35,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return DriveWidget();
                        }
                    ),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
