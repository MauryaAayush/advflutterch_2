import 'package:flutter/cupertino.dart';

class DatePickerSCreen extends StatelessWidget {
  const DatePickerSCreen({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController dateController = TextEditingController();

    return  CupertinoPageScaffold(
         navigationBar: CupertinoNavigationBar(
           middle: Text('Date Picker'),
         ),
        child: Center(
          child: CupertinoTextField(
            controller: dateController,
            readOnly: true,
            decoration: BoxDecoration(
              border: Border.all(
                color: CupertinoColors.black,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            suffix: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () async {
                DateTime selectedDate = await showCupertinoModalPopup<DateTime>(
                  context: context,
                  builder: (context) => Container(
                    height: 200,
                    child: CupertinoDatePicker(
                      initialDateTime: DateTime.now(),
                      minimumDate: DateTime(1947),
                      maximumDate: DateTime(2047),
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (date) {
                        String formattedDate = "${date.day}/${date.month}/${date.year}";
                        dateController.text = formattedDate;
                      },
                    ),
                  ),
                ) ?? DateTime.now();

                print(selectedDate);
              },
              child: Icon(CupertinoIcons.calendar),
            ),
            placeholder: 'dd/mm/yyyy',
            prefix: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text(''),
            ),
          ),
        ));
  }
}
