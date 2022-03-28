import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softonauts/widget/SignUpBoxWidget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0), // here the desired height
          child: AppBar(
            backgroundColor: Theme.of(context).primaryColorDark,
          )
      ),
      body: SingleChildScrollView(child: SignUpBoxWidget()),
    ) ;
  }
}
