import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce_rms/home.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class Ecommercerms extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Icon(Icons.add_shopping_cart, size: 250,),
        nextScreen: Home(),
        backgroundColor: Colors.blue,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        splashIconSize: 250,
        animationDuration: Duration(seconds: 1,),
        duration: 2000,
      ),
    );
  }
}