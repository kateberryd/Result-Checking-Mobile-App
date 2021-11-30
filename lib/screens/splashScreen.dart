import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resultchecker/screens/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  
    
   void initState(){
      super.initState();
      Timer(Duration(seconds: 4), (){
          Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          fit: StackFit.expand,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
          children: <Widget>[                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
            Container(
              decoration: BoxDecoration(color: Colors.white),
            ),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                          CircleAvatar(
                            child: Image.asset('assets/logo.png'),
                            radius: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Ds Adegbenoro ICT Result Checker",
                             style: TextStyle(
                               color: Color.fromRGBO(107, 119, 160, 1),
                               fontSize: 16.0,
                               fontStyle: FontStyle.italic,
                               fontWeight: FontWeight.w500,
                               fontFamily: "Poppins",
                             ),
                          )
                      ],
                    ),
                  ),
                )
              ]
            )                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
          ],
      ),
    );
  }
}