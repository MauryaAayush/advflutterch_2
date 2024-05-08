import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/System_Provider.dart';

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
            Switch(value: Provider.of<SystemProvider>(context, listen: true).isIOS,
              onChanged: (value) {
                Provider.of<SystemProvider>(context, listen: false)
                    .changeLibrary(value);
            },)
          ],
        ),
        body: Center(
          child:  Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Center(
                        child: Text(
                          "Welcome to Android (material) bottom sheet",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Bottom Sheet",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal,
                    ),
                  )),
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
              CircularProgressIndicator(
                color: Colors.teal,
              ),

              TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Material"),
                        content: Text(
                            "Alert Dialog Box -> Android (Material)"),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "okay",
                                style: TextStyle(
                                  color: Colors.teal,
                                ),
                              ))
                        ],
                      ),
                    );
                  },
                  child: Text(
                    "Alert Dialog",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal,
                    ),
                  )),

              ListTile(
                trailing: Text(' \$500',
                style: TextStyle(
                  fontSize: 25
                ),),
                leading: Icon(
                  Icons.android,
                  color: Colors.teal,
                  size: 40,
                ),
                title: Text(
                  "Google",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Pixel 6 pro",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,

                  ),
                ),
              )
            ],
          ),
          ),
        ),
      );
  }
}
