import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({Key key}) : super(key: key);

  @override
  _UserProfileWidgetState createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10, left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
          color: Theme
              .of(context)
              .primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
              spreadRadius: 5.0,
            ),
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage('assets/img/profile.jpg'),
              height: 80,
              width: 80,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Jhon Anderson',style: Theme.of(context).textTheme.bodyText2,),
              SizedBox(height: 10,),
              Text('South field,48075',style: Theme.of(context).textTheme.bodyText2,)
            ],
          )
        ],
      ),
    );
  }
}
