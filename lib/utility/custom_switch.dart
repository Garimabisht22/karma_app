import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool notifications = false;
  String switchText = "";

  double value = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 80),
        value: notifications ? 1 : 0);
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
    _animationController.addListener(() {
      setState(() {
        value = _animation.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            width: 75,
            height: 30,
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 6),
              child: Text(switchText,style: TextStyle(color: Colors.white,fontFamily: "OpenSans"),),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xffFF8400)),
          ),
          Transform.translate(
            offset: Offset(50 * value, 0),
            child: Container(
              height: 29,
              width: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xe6de700d)
              ),
            ),
          ),
          Transform.translate(offset: Offset(50 * value, 0),
            child: Container(
            height: 29,
            width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xe6de700d)
            ),
          ),)
        ],
      ),
      onTap: () {
        if (_animationController.isCompleted) {
          _animationController.reverse();
        } else
          _animationController.forward();
        setState(() {
          notifications = !notifications;
          if(notifications==true)
            switchText = "ON";
          else
            switchText = "";
        });
      },
    );
  }
}
