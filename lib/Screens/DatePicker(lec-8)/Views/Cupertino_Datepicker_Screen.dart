import 'package:flutter/material.dart';

final TextEditingController dateController = TextEditingController();

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey,
        title: Text(
          'Date Picker',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.menu),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            TextField(
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
          ],
        ),
      ),
    );
  }
}