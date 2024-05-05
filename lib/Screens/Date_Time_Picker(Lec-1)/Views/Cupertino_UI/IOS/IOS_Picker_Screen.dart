import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ios_Pickers extends StatelessWidget {
  const Ios_Pickers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
          actionsIconTheme: IconThemeData(color: Colors.white),
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            'IOS Date Picker',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return Container(
                          height: 200,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            initialDateTime: DateTime.now(),
                            onDateTimeChanged: (DateTime newDateTime) {},
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.date_range),
                ),

                Text('Date',style: TextStyle(
                  fontSize: 30,
                ),)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return Container(
                          height: 200,
                          child: CupertinoTimerPicker(onTimerDurationChanged: (value) {
                                (Duration value){
                            };
                          },),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.timer_outlined),
                ),

                Text('Time',style: TextStyle(
                  fontSize: 30,
                ),)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return Container(
                          height: 200,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            initialDateTime: DateTime.now(),
                            onDateTimeChanged: (DateTime newDateTime) {},
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.date_range),
                ),

                Text('Action Sheet',style: TextStyle(
                  fontSize: 30,
                ),)
              ],
            ),
          ],
        ));
  }
}
