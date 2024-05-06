import 'package:flutter/material.dart';

class Android_Screen extends StatelessWidget {
  const Android_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios_new),
          title: Text('Android'),
          actions: [
            Switch(value: true, onChanged: (value) {
              
            },)
          ],
        ),
        body: Center(
          child:  Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Row(
                children: [

                ],
              ),
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

            ],
          ),
          ),
        ),
      );
  }
}
