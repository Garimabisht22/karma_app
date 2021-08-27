import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KarmaDrivePage extends StatefulWidget {
  static const String id = 'karma_drive_page';

  @override
  _KarmaDrivePageState createState() => _KarmaDrivePageState();
}

class _KarmaDrivePageState extends State<KarmaDrivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF8400),
      body: Column(
        children: [
          Container(
            child: Row(),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,

            ),
          ),
        ],
      ),
    );
  }
}
