import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginBoxWidget extends StatefulWidget {
  const LoginBoxWidget({Key key}) : super(key: key);

  @override
  _LoginBoxWidgetState createState() => _LoginBoxWidgetState();
}

class _LoginBoxWidgetState extends State<LoginBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.only(
          top: 50, left: 10, right: 10, bottom: 20),
      decoration: BoxDecoration(
          color: Theme
              .of(context)
              .primaryColor,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
              spreadRadius: 5.0,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 30.0, bottom: 20.0, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Sign In',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 50,
              child: TextFormField(
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyText2
                    .merge(TextStyle(color: Colors.black)),
                decoration: InputDecoration(
                  hintText: 'Email',
                  focusedBorder: OutlineInputBorder(
                    //borderSide: BorderSide(color: Theme.of(context).primaryColorDark)
                      borderRadius: BorderRadius.circular(8)
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme
                          .of(context)
                          .primaryColorDark),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
              ),
              child: TextFormField(

                style: Theme
                    .of(context)
                    .textTheme
                    .bodyText2
                    .merge(TextStyle(color: Colors.black)),
                decoration: InputDecoration(
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                    //borderSide: BorderSide(color: Theme.of(context).primaryColorDark)
                      borderRadius: BorderRadius.circular(8)
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme
                          .of(context)
                          .primaryColorDark),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  //_con.loginAuth(email.text, password.text);
                  Navigator.pushNamedAndRemoveUntil(context, '/Home', (route) => false);
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Theme
                        .of(context)
                        .primaryColorDark,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Sign In', style: Theme
                      .of(context)
                      .textTheme
                      .button, textAlign: TextAlign.center,)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Forgot Password',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/Signup');
                    },
                    child: Text('Sign Up',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),)),
              ],
            ),
            SizedBox(height: 60,),
            Text('Terms of Use',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(
              decoration: TextDecoration.underline,
            ),),)
          ],
        ),
      ),
    );
  }
}
