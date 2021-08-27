import 'package:flutter/material.dart';
import 'package:karma_app/screens/karma_drive_page.dart';
import 'package:karma_app/screens/login_screen.dart';
import 'package:karma_app/screens/profile_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Karma App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    initialRoute: LoginScreen.id,
    routes:{
      LoginScreen.id: (context) => LoginScreen(),
      KarmaDrivePage.id:(context)=>KarmaDrivePage(),
      ProfilePage.id:(context)=>ProfilePage()
    },
  ),

  );
}
