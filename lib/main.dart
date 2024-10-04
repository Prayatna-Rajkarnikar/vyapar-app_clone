import 'package:flutter/material.dart';
import 'package:vyapar_app/screens/sign_up.dart';
import 'package:vyapar_app/screens/slide_show.dart';
import 'package:vyapar_app/screens/bottom_nav.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "signup": (context) => const Signup(),
      "slider": (context) => const SlideshowScreen(),
      "home": (context) => const BottomNav(),
    },
    initialRoute: 'slider',
  ));
}
