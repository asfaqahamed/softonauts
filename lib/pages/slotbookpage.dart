import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softonauts/Model/slotdaymodel.dart';
import 'package:softonauts/pages/bookdetailspage.dart';
import 'package:toast/toast.dart';
class SlotBookPage extends StatefulWidget {
  const SlotBookPage({Key key}) : super(key: key);

  @override
  _SlotBookPageState createState() => _SlotBookPageState();
}

class _SlotBookPageState extends State<SlotBookPage> {
  int  selectedIndex;
  List<SlotDayModel> slots = <SlotDayModel>[];
  void addList() {
    SlotDayModel slotDayModel = SlotDayModel();
    slotDayModel.day = 'Mon';
    slotDayModel.date = '1';
    slotDayModel.mon = 'Apr';
    slotDayModel.slotAvailable = 0;
    SlotDayModel slotDayModel1 = SlotDayModel();
    slotDayModel1.day = 'Tue';
    slotDayModel1.date = '2';
    slotDayModel1.mon = 'Apr';
    slotDayModel1.slotAvailable = 60;
    SlotDayModel slotDayModel2 = SlotDayModel();
    slotDayModel2.day = 'Wed';
    slotDayModel2.date = '3';
    slotDayModel2.mon = 'Apr';
    slotDayModel2.slotAvailable = 57;
    SlotDayModel slotDayModel3 = SlotDayModel();
    slotDayModel3.day = 'Thur';
    slotDayModel3.date = '4';
    slotDayModel3.mon = 'Apr';
    slotDayModel3.slotAvailable = 60;
    SlotDayModel slotDayModel4 = SlotDayModel();
    slotDayModel4.day = 'Fri';
    slotDayModel4.date = '5';
    slotDayModel4.mon = 'Apr';
    slotDayModel4.slotAvailable = 59;
    SlotDayModel slotDayModel5 = SlotDayModel();
    slotDayModel5.day = 'Sat';
    slotDayModel5.date = '6';
    slotDayModel5.mon = 'Apr';
    slotDayModel5.slotAvailable = 55;
    SlotDayModel slotDayModel6 = SlotDayModel();
    slotDayModel6.day = 'Sun';
    slotDayModel6.date = '7';
    slotDayModel6.mon = 'Apr';
    slotDayModel6.slotAvailable = 45;
    slots.add(slotDayModel);
    slots.add(slotDayModel1);
    slots.add(slotDayModel2);
    slots.add(slotDayModel3);
    slots.add(slotDayModel4);
    slots.add(slotDayModel5);
    slots.add(slotDayModel6);

  }

  Iterable<TimeOfDay> getTimes(
      TimeOfDay startTime, TimeOfDay endTime, Duration step) sync* {
    var hour = startTime.hour;
    var minute = startTime.minute;

    do {
      yield TimeOfDay(hour: hour, minute: minute);
      minute += step.inMinutes;
      while (minute >= 60) {
        minute -= 60;
        hour++;
      }
    } while (hour < endTime.hour ||
        (hour == endTime.hour && minute <= endTime.minute));
  }

  final startTime = TimeOfDay(hour: 4, minute: 0);
  final endTime = TimeOfDay(hour: 12, minute: 0);
  final step = Duration(minutes: 10);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addList();
  }

  @override
  Widget build(BuildContext context) {
    final times = getTimes(startTime, endTime, step)
        .map((tod) => tod.format(context))
        .toList();
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
                  'Drop-In Center',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Navigator Details',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey,
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: Theme.of(context).primaryColorDark),
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
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                child: ListView.separated(
                  itemCount:slots.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=index;
                          });
                        },
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color:(selectedIndex==index)?Theme
                                .of(context)
                                .primaryColorDark:Colors.grey),
                              color: (selectedIndex==index)?Theme.of(context).backgroundColor:Theme
                                  .of(context)
                                  .primaryColor,
                              borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(slots[index].day),
                                    SizedBox(width: 5,),
                                    Text(slots[index].date),
                                    SizedBox(width: 5,),
                                    Text(slots[index].mon),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                (slots[index].slotAvailable==0)?
                                    Text('No Slots Available',style: Theme.of(context).textTheme.bodyText1,):
                                Text('${slots[index].slotAvailable} Slots Available',style: Theme.of(context).textTheme.bodyText1,)
                              ],
                            ),
                          ),
                        ),
                      );
                },
                  separatorBuilder: (context,index){
                    return SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.wb_sunny_sharp),
                SizedBox(width: 10,),
                Text('Morning'),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: times.length,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.5 / 1.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        if(selectedIndex==null){
                          showToast('Please Select Date',gravity: Toast.BOTTOM, duration: Toast.LENGTH_LONG);
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDetailsPage(slot: slots[selectedIndex],time: times[index],)));
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),),
                        child: Center(child: Text(times[index])),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(
      msg,
      context,
      duration: duration,
      gravity: gravity,
    );
  }
}
