import 'package:flutter/material.dart';
import 'package:vyapar_app/screens/add_item.dart';
import 'package:vyapar_app/screens/invoice.dart';
import 'package:vyapar_app/screens/notifications.dart';
import 'package:vyapar_app/screens/profile.dart';
import 'package:vyapar_app/screens/sale.dart';
import 'package:vyapar_app/screens/settings.dart';
import 'package:vyapar_app/screens/sign_up.dart';
import 'package:vyapar_app/screens/slide_show.dart';
import 'package:vyapar_app/screens/bottom_nav.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "signup": (context) => const Signup(),
      "slider": (context) => const SlideshowScreen(),
      "profile": (context) => const ProfileScreen(),
      "home": (context) => const BottomNav(),
      "sale": (context) => const SaleScreen(),
      "addItem": (context) => const AddItem(),
      "invoice": (context) => const FirstInvoice(),
      "notifications": (context) => const Notifications(),
      "settings": (context) => const Settings(),
    },
    initialRoute: 'slider',
  ));
}
