

import 'dart:ui';

import 'package:dynamic_page/loginpage.dart';
import 'package:dynamic_page/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children:[
              Container(
                decoration: BoxDecoration(
                  image:DecorationImage(
                    image:AssetImage('assets/images/rockbg.jpg'),fit: BoxFit.cover,
                  ),
                ),
                child:BackdropFilter(
                  filter:ImageFilter.blur(sigmaX: 0.1,sigmaY: 0.1),
                  child:Container(
                    decoration: BoxDecoration(
                      color:Colors.white.withOpacity(0.1),
                    ),
                  ),
                ),
                height: 620,
                width: double.infinity,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Text("Paradise isn't a place.\nIt's a feeling..",
                    style:TextStyle(color: Colors.white,fontWeight: FontWeight.w100,fontSize: 30,),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:400,left:385),
                child: ElevatedButton(

                  onPressed:(){
                  
                    print("clicked");
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>LoginPage(),
                      )
                    );
                  },
                  child:Text(" I have an acoount "),
                  style: ElevatedButton.styleFrom(
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
                      BorderSide(color: Colors.lightBlue,width:3),
                      borderRadius:
                      BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    top:473,left:400),
                child: SizedBox(


                  child:Text("Need an account?",style: TextStyle(
                      color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:500,left:380),
                child: ElevatedButton(

                  onPressed:(){
                    print("clicked");
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                  child:Text(" Sign Up for an Account ",style: TextStyle(
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
            ],

          ),
        ],
      ),
    );
  }
}