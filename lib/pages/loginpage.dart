import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softonauts/widget/loginBoxWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0), // here the desired height
          child: AppBar(
            backgroundColor: Theme.of(context).primaryColorDark,
          )
      ),
      body: Center(
        child: SingleChildScrollView(child: LoginBoxWidget()),
      ),
    ) ;
  }
}
