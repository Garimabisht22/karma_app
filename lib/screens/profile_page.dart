import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karma_app/utility/custom_switch.dart';

class ProfilePage extends StatefulWidget {
  static const String id = 'profile_page';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _edit = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffFF8400),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: width / 3,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 16),
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _edit = false;
                          });
                        },
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height / 5),
                  height: height / 1.25,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(35)),
                    color: Colors.white,
                  ),
                  child: Container(
                    width: double.maxFinite,
                    height: width,
                    margin: EdgeInsets.symmetric(vertical: 60, horizontal: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text("Name",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'OpenSans')),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: TextField(
                                        readOnly: _edit,
                                        style: TextStyle(color: Colors.black),
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.name,
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          fillColor: Color(0xA6F0F0F0),
                                          hintText: "Garima Bisht",
                                          errorMaxLines: 2,
                                          filled: true,
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Color(0xA6F0F0F0),
                                          )),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xA6A5A5A5),
                                            ),
                                          ),
                                          // alignLabelWithHint: true,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text("Phone Number",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'OpenSans')),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      //   color: Color(0xceeae9e9),
                                      // width: 150,
                                      // height: 40,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: TextField(
                                          style: TextStyle(color: Colors.black),
                                          cursorColor: Colors.black,
                                          readOnly: _edit,
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.name,
                                          decoration: InputDecoration(
                                            fillColor: Color(0xA6F0F0F0),
                                            hintText: "+91 1234567890",
                                            errorMaxLines: 2,
                                            filled: true,
                                            hintStyle:
                                                TextStyle(color: Colors.black),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                              color: Color(0xA6F0F0F0),
                                            )),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xA6A5A5A5),
                                              ),
                                            ),
                                            // alignLabelWithHint: true,
                                            contentPadding: EdgeInsets.symmetric(
                                                vertical: 10.0, horizontal: 20.0),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height:30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "Location",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,

                                            color: Colors.black,
                                            fontFamily: 'OpenSans'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: TextField(
                                        style: TextStyle(color: Colors.black),
                                        cursorColor: Colors.black,
                                        readOnly: _edit,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          fillColor: Color(0xA6F0F0F0),
                                          hintText: "India",
                                          errorMaxLines: 2,
                                          filled: true,
                                          hintStyle: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'OpenSans'),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Color(0xA6F0F0F0),
                                          )),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xA6A5A5A5),
                                            ),
                                          ),
                                          // alignLabelWithHint: true,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text("Interest",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,

                                              color: Colors.black,
                                              fontFamily: 'OpenSans')),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      //   color: Color(0xceeae9e9),
                                      // width: 150,
                                      // height: 40,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: TextField(
                                          style: TextStyle(color: Colors.black),
                                          cursorColor: Colors.black,
                                          readOnly: _edit,
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.name,
                                          decoration: InputDecoration(
                                            fillColor: Color(0xA6F0F0F0),
                                            hintText: "Flutter",
                                            errorMaxLines: 2,
                                            filled: true,
                                            hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'OpenSans'),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                              color: Color(0xA6F0F0F0),
                                            )),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xA6A5A5A5),
                                              ),
                                            ),
                                            // alignLabelWithHint: true,
                                            contentPadding: EdgeInsets.symmetric(
                                                vertical: 10.0, horizontal: 20.0),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height:30,),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: double.maxFinite,
                              child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Notifications",style: TextStyle(fontFamily: "OpenSans",fontSize: 18,fontWeight: FontWeight.w600),),
                                  CustomSwitch()
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: width / 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //   mar
                    //  gin: EdgeInsets.all(width/3),
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile_image.png'),
                        radius: 55,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
