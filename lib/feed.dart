import 'dart:ui';


import 'package:flutter/material.dart';

import 'homepage.dart';



void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedPage(),
    );
  }
}

class FeedPage extends StatelessWidget {
  const FeedPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(

          backgroundColor:Colors.transparent,
          title:Text('Holiday Hype'),
          centerTitle: true,
          leading: Icon(Icons.menu),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings),
            ),
          ],
        ),
        body:Stack(
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
                      color:Colors.grey.withOpacity(0.7),
                    ),
                  ),
                ),
                height: 620,
                width: double.infinity,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Text("Welcome to Holiday Hype\nBook your hotel NOW...",
                    style:TextStyle(color: Colors.white,fontWeight: FontWeight.w100,fontSize: 30,),
                    textAlign: TextAlign.center,
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 780,top:15),
                child: ElevatedButton(

                  onPressed:(){
                    print("Clicked");
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child:Text(" Logout",style: TextStyle(
                      color:Colors.blue
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    padding:EdgeInsets.symmetric(
                        horizontal: 20,vertical:10),
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

            ]


        )
    );
  }
}
