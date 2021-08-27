import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:karma_app/utility/custom_button.dart';
import 'package:http/http.dart' as http;

import 'karma_drive_page.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String phoneTextFieldHint = "Email";
  String passwordTextFieldHint = "Password";
  bool passwordHidden = true;
  bool _showLoading= false;
  Widget spin = SpinKitThreeBounce(
    color: Color(0xffFF8400),
    size: 50.0,
    //lineWidth: 30,
   );

  Future<void> login() async {
    setState(() {
      _showLoading = true;
    });
    try {
      if (_passwordController.text.isNotEmpty &&
          _emailController.text.isNotEmpty) {
        var response = await http.post(Uri.parse("https://reqres.in/api/login"),
            body: ({
              "email": _emailController.text,
              "password": _passwordController.text
            }));
        print(response.statusCode);
        if (response.statusCode == 200) {
          Navigator.pushReplacementNamed(context, KarmaDrivePage.id);
        }
        else {
          setState(() {
            _showLoading = false;
          });
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("*Invalid Credentials")));
        }
      }
      else {
        setState(() {
          _showLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("*Password Required")));
      }
    }
    catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("*Password Required")));
    }
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false, // set it to false
        body: Column(
          children: [
            ClipPath(
              clipper:
              CustomShape(), // this is my own class which extendsCustomClipper
              child: Container(
                height: height / 3,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.track_changes,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text(
                        'KARMA',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: "ReggaeOne",
                          //     decoration: TextDecoration.underline
                        ),
                      ),
                      SizedBox(
                        //  height: 20.0,
                        width: 110,
                        child: Container(
                          height: 0.5,
                          color: Color(0xA6FCFFFF),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0),
                        child: Text(
                          'UNITING POWER',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffFCFFFF),
                              letterSpacing: 2),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "OpenSans",
                            color: Color(0xffFCFFFF),
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                // height: height / 3,
                color: Color(0xffFF8400),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33.0, vertical: 25),
              child: TextField(
                style: TextStyle(color: Colors.black),
                controller: _emailController,
                cursorColor: Colors.black,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {},
                decoration: InputDecoration(
                  fillColor: Color(0xA6F0F0F0),
                  hintText: phoneTextFieldHint,
                  errorMaxLines: 2,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.black),
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
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(29,20,29,10),
              child: Container(
                height: 48,
                width: double.maxFinite,
                margin: EdgeInsets.fromLTRB(2, 4, 5, 0),
                decoration: BoxDecoration(
                    color: Color(0xA6F0F0F0),
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          // autofocus: true,
                          obscureText: passwordHidden,
                          style: TextStyle(color: Colors.black),
                          controller: _passwordController,
                          cursorColor: Color(0xffA5A5A5),
                          onChanged: (onChanged) {},
                          decoration: InputDecoration(
                              hintText: passwordTextFieldHint,
                              border: InputBorder.none,
                              hintStyle:
                              TextStyle(color: Colors.black, fontSize: 15)),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            passwordHidden = !passwordHidden;
                          });
                        },
                        child: Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: Text("Forgot Password",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.amber.shade800,
                        )),
                    onPressed: () {
                      //Navigator.pushReplacementNamed(context, RegisterScreen.id);
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(

              ),
            ),
           _showLoading?spin:CustomButton(width: width/3.9,
              onPressed: (){
              login();
             // Navigator.pushReplacementNamed(context, KarmaDrivePage.id);
            },
              title: 'Login', backgroundColor: Color(0xff53E40D), titleColor: Colors.white, height: 45,),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Not a member yet?",style: TextStyle(
                      fontSize: 16
                  ),),
                  TextButton(
                    child: Text("Click Here",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.amber.shade800,
                        )),
                    onPressed: () {
                     // Navigator.pushReplacementNamed(context, KarmaDrivePage.id);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}



class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 80);
    path.quadraticBezierTo(width / 2, height, width, height - 80);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
