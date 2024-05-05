import 'package:advflutterch_2/Screens/Date_Time_Picker(Lec-1)/Provider/Dialog_Provider_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Picker_Date extends StatelessWidget {
  const Picker_Date({super.key});

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
          'Date Picker',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    DateTime selectedDate = await showDatePicker(
                      context: context,
                      // barrierColor:Colors.yellow,
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2050),
                      initialDate: DateTime.now(),
                    ) ??
                        DateTime.now();
                    print(selectedDate);
                  },
                  icon: Icon(
                    Icons.date_range,
                    size: 30,
                  )),
              Text(
                'Date',
                style: TextStyle(color: Colors.teal, fontSize: 30),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    TimeOfDay selectedTime = await showTimePicker(
                        context: context, initialTime: TimeOfDay.now()) ??
                        TimeOfDay.now();
                  },
                  icon: Icon(
                    Icons.timer_outlined,
                    size: 30,
                  )),
              Text(
                'Time',
                style: TextStyle(color: Colors.teal, fontSize: 30),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Phone Ringtone'),
                          content: Column(
                            children: [
                              RadioListTile(
                                title: Text('None'),
                                value: 'None',
                                groupValue: Provider
                                    .of<DialogBoxProvider>(
                                    context, listen: true)
                                    .selectedRingtone,
                                onChanged: (value) {
                                  Provider.of<DialogBoxProvider>(context,listen: false)
                                      .setDialog(value.toString());
                                },)
                            ],
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.list,
                    size: 30,
                  )),
              Text(
                'Dialoge',
                style: TextStyle(color: Colors.teal, fontSize: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
