import 'package:flutter/material.dart';

class Date_Picker_Screen extends StatelessWidget {
  const Date_Picker_Screen({super.key});



  @override
  Widget build(BuildContext context) {
    final TextEditingController dateController = TextEditingController();
    // final ValueNotifier<DateTime?> _selectedDate = ValueNotifier<DateTime?>(null);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: dateController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () async {
                      DateTime selectedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1947),
                        lastDate: DateTime(2047),
                        initialDate: DateTime.now(),
                      ) ??
                          DateTime.now();

                      String formattedDate =
                          "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                      dateController.text = formattedDate;

                      print(selectedDate);
                    },
                    icon: Icon(Icons.calendar_month),
                  ),
                  hintText: 'dd/mm/yyy',
                  labelText: 'Date',
                ),
                readOnly: true,
              ),
            ),
            // IconButton(
            //     onPressed: () async {
            //       DateTime? pickedDate = await showDatePicker(
            //         context: context,
            //         initialDate: DateTime.now(),
            //         firstDate: DateTime(1919),
            //         lastDate: DateTime(2080),
            //       );
            //       if (pickedDate != null) {
            //         print("Selected date: $pickedDate");
            //         ScaffoldMessenger.of(context).showSnackBar(
            //           SnackBar(content: Text("Selected date: ${pickedDate.toLocal()}".split(' ')[0])),
            //         );
            //       }
            //     },
            //     icon: Icon(Icons.date_range),
            //
            // ),


            // ValueListenableBuilder<DateTime?>(
            //   valueListenable: _selectedDate,
            //   builder: (context, value, child) {
            //     if (value == null) {
            //       return Text("Selected date: ${value?.toLocal()}".split(' ')[0]);
            //     } else {
            //       return Text("No date selected");
            //     }
            //   },
            // ),


          ],
        ),
      ),
    );
  }
}
