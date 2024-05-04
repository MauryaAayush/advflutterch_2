import 'package:flutter/material.dart';

class Date_Picker extends StatelessWidget {
  const Date_Picker({super.key});

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
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2050),
                            initialDate: DateTime.now(),
                    ) ?? DateTime.now();
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
          )
        ],
      ),
    );
  }
}
