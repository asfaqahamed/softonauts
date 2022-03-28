import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpBoxWidget extends StatefulWidget {
  const SignUpBoxWidget({Key key}) : super(key: key);

  @override
  _SignUpBoxWidgetState createState() => _SignUpBoxWidgetState();
}

class _SignUpBoxWidgetState extends State<SignUpBoxWidget> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          top: 10, left: 10, right: 10, bottom: 10),
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
            top: 20.0, bottom: 20.0, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sign Up',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
              ],
            ),
            SizedBox(height: 10,),
            Text('First Name',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'First Name',
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
            SizedBox(height: 10,),
            Text('Middle Name',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'Middle Name',
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
            SizedBox(height: 10,),
            Text('Last Name',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'Last Name',
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
            SizedBox(height: 10,),
            Text('Email',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
            SizedBox(height: 10,),
            Text('Password',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
            SizedBox(height: 10,),
            Text('Date Of Birth',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'Date Of Brith',
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
            SizedBox(height: 10,),
            Text('Contact No',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'Contact No',
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
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 10,),
            Text('SSN(Last 4 Digits)',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'SSN',
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
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 10,),
            Text('Address1',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'Address1',
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
            SizedBox(height: 10,),
            Text('Address2',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'Address2',
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
            SizedBox(height: 10,),
            Text('City',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'City',
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
            SizedBox(height: 10,),
            Text('State',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'State',
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
            SizedBox(height: 10,),
            Text('Zip Code',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
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
                  hintText: 'Zip Code',
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
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 10,),
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
                  child: Center(child: Text('Sign Up', style: Theme
                      .of(context)
                      .textTheme
                      .button, textAlign: TextAlign.center,)),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(' ',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text('Sign In',style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(color: Colors.grey)),)),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
