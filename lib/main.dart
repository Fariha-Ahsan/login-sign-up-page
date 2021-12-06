import 'dart:ui';

import 'package:dynamic_page/signup.dart';
import 'package:flutter/material.dart';

import 'feed.dart';
import 'homepage.dart';
import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //home:HomePage(),
      initialRoute:'/',
      routes:{
       '/':(context)=>HomePage(),
        '/login':(context)=>LoginPage(),
        '/feed':(context)=>FeedPage(),
        '/signup':(context)=>SignUp(),

      },

    );

  }
}


