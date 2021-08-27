import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class DriveWidget extends StatefulWidget {
  @override
  _DriveWidgetState createState() => _DriveWidgetState();
}

class _DriveWidgetState extends State<DriveWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      height: width / 1.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.white, BlendMode.difference))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("9,523",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: "OpenSans",
                        color: Colors.white,
                    fontWeight: FontWeight.w500))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "JOINED",
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontFamily: "OpenSans",
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Expanded(
              child: SizedBox(

              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("CATEGORY",
                      style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontFamily: "OpenSans",
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "SPIRITUAL ENVIRONMENT",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "OpenSans",
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("05:00 AM | 07 DEC 2019",
                          style: TextStyle(
                              fontSize: 15,
                             // fontStyle: FontStyle.italic,
                              fontFamily: "OpenSans",
                              color: Colors.white,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomButton(
                        width: width/4,
                        onPressed: () {},
                        title: 'JOINED',
                        backgroundColor: Color(0xff53E40D),
                        titleColor: Colors.white,
                        height: 30,
                        radius: 15,
                      ),
                      CustomButton(
                        width: width/4,
                        radius: 15,
                        onPressed: () {},
                        title: 'DO KARMA',
                        backgroundColor: Colors.white,
                        titleColor: Colors.black,
                        height: 30,
                      ),
                    ],
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
