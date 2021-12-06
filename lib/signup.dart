import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(

    children:[
      Container(
    decoration: BoxDecoration(
    image:DecorationImage(
    image:AssetImage('assets/images/rockbg.jpg'),fit: BoxFit.cover,
    ),
    ),
    child:BackdropFilter(
    filter:ImageFilter.blur(sigmaX: 0.4,sigmaY: 0.4),
    child:Container(
    decoration: BoxDecoration(
    color:Colors.grey.withOpacity(0.5),
    ),
    ),
    ),
    height: 620,
    width: double.infinity,
    ),
    Center(
    child: Column(

    children: [

    Container(
    margin:EdgeInsets.only(top: 90),
    decoration: BoxDecoration(
    border:Border(
    bottom:BorderSide(
    color: Colors.white,
    ),
    ),
    ),
    child: SizedBox(
    height:20,
    width: 300,
    child:Text("User Name",style: TextStyle(
    color: Colors.white),textAlign: TextAlign.center,),
    ),
    ),
    Container(
    margin:EdgeInsets.only(top: 90),
    decoration: BoxDecoration(
    border:Border(
    bottom:BorderSide(
    color: Colors.white,
    ),
    ),
    ),
    child: SizedBox(
    height:20,
    width: 300,
    child:Text("Email",style: TextStyle(
    color: Colors.white),textAlign: TextAlign.center,),
    ),
    ),
    Container(
    margin:EdgeInsets.only(top: 90),
    decoration: BoxDecoration(
    border:Border(
    bottom:BorderSide(
    color: Colors.white,
    ),
    ),
    ),
    child: SizedBox(
    height:20,
    width: 300,
    child:Text("Password",style: TextStyle(
    color: Colors.white),textAlign: TextAlign.center,),
    ),
    ),
    Padding(
      padding: const EdgeInsets.only(top:30),
      child: ElevatedButton(

      onPressed:(){
      print("clicked");
      Navigator.pushReplacementNamed(context, '/login');
      },
      child:Text(" Sign Up ",style: TextStyle(
      color:Colors.blue
      ),
      ),
      style: ElevatedButton.styleFrom(
      primary: Colors.white70,
      padding:EdgeInsets.symmetric(
      horizontal: 70,vertical:20),
      textStyle: TextStyle(
      fontSize:18,
      fontWeight: FontWeight.bold,

      //height: 5,

      ),
      elevation:20,

      shape:

      RoundedRectangleBorder(
      side:
      BorderSide(
      color: Colors.white,width:3,),
      borderRadius:
      BorderRadius.circular(50),
      ),
      ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right:800,top:150),
      child: ElevatedButton(

      onPressed:(){
      print("clicked");
      Navigator.pushReplacementNamed(context, '/');
      },
      child:Text(" Exit ",style: TextStyle(
      color:Colors.blue
      ),
      ),
      style: ElevatedButton.styleFrom(
      primary: Colors.white54,
      padding:EdgeInsets.symmetric(
      horizontal: 30,vertical:10),
      textStyle: TextStyle(
      fontSize:18,
      fontWeight: FontWeight.bold,

      //height: 5,

      ),
      elevation:20,

      shape:

      RoundedRectangleBorder(
      side:
      BorderSide(
      color: Colors.white,width:3,),
      borderRadius:
      BorderRadius.circular(50),
      ),
      ),
      ),
    ),
    ],
    ),
    ),
    ]
    ),


);
  }
}
