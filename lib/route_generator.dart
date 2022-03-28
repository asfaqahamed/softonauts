
import 'package:flutter/material.dart';
import 'package:softonauts/pages/homepage.dart';
import 'package:softonauts/pages/loginpage.dart';
import 'package:softonauts/pages/signuppage.dart';
import 'package:softonauts/pages/slotbookpage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {

      case '/Login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/Signup':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/Home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/Slot':
        return MaterialPageRoute(builder: (_) => SlotBookPage());
    }
  }
}
