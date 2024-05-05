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
      // body:  CupertinoDatePicker(onDateTimeChanged: , )
      // body: IconButton(onPressed: () {
      //   CupertinoDatePicker(onDateTimeChanged: (value) {
      //    
      //   },maximumYear: 2025,minimumYear: 1090,);
      // }, icon: Icon(Icons.date_range))
      
      // body: Column(
      //   // crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     // Row(
      //     //   mainAxisAlignment: MainAxisAlignment.center,
      //     //   children: [
      //     //     IconButton(
      //     //         onPressed: () async {
      //     //
      //     //          CupertinoDatePicker(
      //     //            minimumYear: 1950,
      //     //            maximumYear: 2050,
      //     //
      //     //            onDateTimeChanged: (value) {
      //     //
      //     //          },);
      //     //
      //     //           // DateTime selectedDate = await showDatePicker(
      //     //           //   context: context,
      //     //           //   // barrierColor:Colors.yellow,
      //     //           //   firstDate: DateTime(1950),
      //     //           //   lastDate: DateTime(2050),
      //     //           //   initialDate: DateTime.now(),
      //     //           // ) ??
      //     //           //     DateTime.now();
      //     //           // print(selectedDate);
      //     //         },
      //     //         icon: Icon(
      //     //           Icons.date_range,
      //     //           size: 30,
      //     //         )),
      //     //     Text(
      //     //       'Date',
      //     //       style: TextStyle(color: Colors.teal, fontSize: 30),
      //     //     ),
      //     //   ],
      //     // ),
      //     // Row(
      //     //   mainAxisAlignment: MainAxisAlignment.center,
      //     //   children: [
      //     //     IconButton(
      //     //         onPressed: () async {
      //     //           TimeOfDay selectedTime = await showTimePicker(
      //     //               context: context, initialTime: TimeOfDay.now()) ??
      //     //               TimeOfDay.now();
      //     //         },
      //     //         icon: Icon(
      //     //           Icons.timer_outlined,
      //     //           size: 30,
      //     //         )),
      //     //     Text(
      //     //       'Time',
      //     //       style: TextStyle(color: Colors.teal, fontSize: 30),
      //     //     ),
      //     //   ],
      //     // ),
      //     // // Row(
      //     // //   mainAxisAlignment: MainAxisAlignment.center,
      //     // //   children: [
      //     // //     IconButton(
      //     // //         onPressed: () {
      //     // //           showDialog(
      //     // //             context: context,
      //     // //             builder: (context) {
      //     // //               Row(
      //     // //                 children: [
      //     // //                   Radio(
      //     // //                     value: true,
      //     // //                     groupValue: Text("Name"),
      //     // //                     onChanged: (value) {},
      //     // //                   )
      //     // //                 ],
      //     // //               );
      //     // //             },
      //     // //           );
      //     // //         },
      //     // //         icon: Icon(
      //     // //           Icons.list,
      //     // //           size: 30,
      //     // //         )),
      //     // //     Text(
      //     // //       'Dialoge',
      //     // //       style: TextStyle(color: Colors.teal, fontSize: 30),
      //     // //     ),
      //     // //   ],
      //     // // ),
      //   ],
      // ),
    );

  }
}
