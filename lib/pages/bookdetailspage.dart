import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softonauts/Model/slotdaymodel.dart';

class BookDetailsPage extends StatefulWidget {
  BookDetailsPage({Key key,this.slot,this.time}) : super(key: key);
  SlotDayModel slot;
  String time;

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  String type='Face To Face';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Navigator Details',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Container(
              margin:
              EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  //border:
                  //Border.all(color: Theme.of(context).primaryColorDark),
                  ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      child: Image(
                        image: AssetImage('assets/img/profile.jpg'),
                        height: 40,
                        width: 80,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jhon Anderson',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '932 Tenensse Avenue,South field',
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select Appointment Type'),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0,right: 8.0),
                      child: DropdownButton(
                          value: type, //
                          isExpanded: true,
                          icon: Visibility(visible:false, child: Icon(Icons.arrow_downward)),
                          focusColor:
                          Theme.of(context).colorScheme.secondary,
                          underline: Container(
                            color: Colors.white,
                            height: 1,
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                'Face To Face',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2,
                              ),
                              value: 'Face To Face',
                            ),
                            DropdownMenuItem(
                              child: Text(
                                'Video Call',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2,
                              ),
                              value: 'Video Call',
                            ),
                          ],
                          onChanged: (name) {
                            setState(() {
                              //  _con.subcategoryData.categoryId = value;
                              type = name;
                              //_con.listenForLorryBillList(value);
                            });
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date And Time'),
                  SizedBox(height: 10,),
                  Text('${widget.slot.day} ${widget.slot.date} ${widget.slot.mon}, ${widget.time}',style: Theme.of(context).textTheme.bodyText1,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  //_con.loginAuth(email.text, password.text);
                  //Navigator.pushNamedAndRemoveUntil(context, '/Home', (route) => false);
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
                  child: Center(child: Text('Book Appointment', style: Theme
                      .of(context)
                      .textTheme
                      .button, textAlign: TextAlign.center,)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
