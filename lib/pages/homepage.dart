import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softonauts/widget/UserProfileWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        leading: Icon(Icons.menu,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('DROP-IN CENTER',style: Theme.of(context).textTheme.bodyText1,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 50,

                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                  BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                  spreadRadius: 5.0,
                ),
                ]
                ),
                child: TextFormField(

                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText2
                      .merge(TextStyle(color: Colors.black)),
                  decoration: InputDecoration(
                    hintText: 'Search By Name,City,Zipcode',
                    focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColorDark),
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
            ),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/Slot');
                },
                child: UserProfileWidget())
          ],
        ),
      ),
    );
  }
}
