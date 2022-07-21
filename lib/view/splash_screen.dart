import 'dart:async';

import 'package:flutter/material.dart' ;
import 'package:movie/view/control_view.dart';


class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ControlView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[170],
      body: Column(
        children: [
          //image here
          Expanded(
            child: Container(
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [Colors.black87 , Colors.black54 ,Colors.black38 ,Colors.black26]
               )
             ),
              child: Image.asset(
                "assets/images/icons8-movie-beginning-64.png",
                scale: 1.0,


              ),
            ),
          ),


        ],
      ),
    );
  }
}


