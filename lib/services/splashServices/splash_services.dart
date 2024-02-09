import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_newsapp/screen/home_screen.dart';

class SplashServices {
  void splashscreen(context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      },
    );
  }
}
