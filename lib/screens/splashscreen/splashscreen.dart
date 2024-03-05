import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider/screens/login/login.dart';
import 'package:rider/utils/color.dart';
import 'package:rider/utils/image.dart';
import 'package:rider/utils/text.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      // home: MyNavigationBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen(),
          // builder: (BuildContext context) => FetchStatus(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: RColor.gray,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: RColor.primaryBackground,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
            ),
            height: screenHeight * 0.3, // Adjusted using media query
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 1),
                Image.asset(
                  RImage.SplashScreen,
                  width: screenWidth * 0.5, // Adjusted using media query
                  height: screenHeight * 0.1, // Adjusted using media query
                ),
                SizedBox(height: 20),
                Text(
                  Rtext.title1,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: RColor.accent,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  Rtext.title2,
                  style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: RColor.accent,
                  )
                    
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.25),
            child: Container(
              height: screenHeight * 0.5, // Adjusted using media query
              child: Image.asset(
                RImage.SplashScreen1,
                height: screenHeight * 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
