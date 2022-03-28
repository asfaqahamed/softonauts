import 'package:flutter/material.dart';
import 'package:softonauts/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      initialRoute: '/Login',
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto-Bold',
        primaryColor: Colors.white,
        disabledColor: Colors.grey,
        cardColor: Colors.white,
        secondaryHeaderColor: Color(0xFFd46328).withOpacity(1.0),
        brightness: Brightness.light,
        primaryColorLight: Colors.white,
        backgroundColor: Color(0xFFf8e7df),
        scaffoldBackgroundColor:Color(0xFFf7f4ef),
        //accentColor: Color(0xFFf8e7df),
        accentColor: Color(0xFFd46328).withOpacity(1.0),
        dividerColor: Color(0xFF8c98a8).withOpacity(0.1),
        focusColor: Color(0xFF8c98a8).withOpacity(1.0),
        primaryColorDark: Color(0xFFd46328),
        textTheme: TextTheme(
          headline5: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1.3),
          headline4: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3),
          headline3: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1.3),
          headline2: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              height: 1.4),
          headline1: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.4),
          subtitle1: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFFd46328),
              height: 1.3),
          //subhead:TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColorDark, height: 1.3),
          subtitle2: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w300,
              color: Colors.black,
              height: 1.2),
          headline6: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1.3),
          bodyText2: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.2),
          bodyText1: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFFd46328),
              height: 1.3),
          button: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              height: 1.4),
          caption: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.grey.withOpacity(1.0),
              height: 1.7),
        ),
      ),
    );
  }
}
