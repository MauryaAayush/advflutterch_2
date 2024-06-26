import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../Provider/System_Provider.dart';

class IOS_Screen extends StatelessWidget {
  const IOS_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('IOS'),
          trailing: CupertinoSwitch(
            value:  Provider.of<SystemProvider>(context, listen: true).isIOS,
            onChanged: (value) {
              Provider.of<SystemProvider>(context, listen: false)
                  .changeLibrary(value);
          },),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: const Icon(
                    CupertinoIcons.list_bullet_indent,
                    size: 30,
                    color: CupertinoColors.activeBlue,
                  ),
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return CupertinoActionSheet(
                          title: const Text(
                            'Favorite Dessert',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          message: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Text(
                              'Please select the best dessert from the\noptions below.',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          actions: [
                            CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Profiteroles',
                                style: TextStyle(
                                    color: CupertinoColors.activeBlue,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                              ),
                            ),
                            CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Cannolis',
                                style: TextStyle(
                                    color: CupertinoColors.activeBlue,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                              ),
                            ),
                            CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Trifle',
                                style: TextStyle(
                                    color: CupertinoColors.activeBlue,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                              ),
                            ),
                          ],
                          cancelButton: CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            isDefaultAction: true,
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                  color: CupertinoColors.activeBlue,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            CupertinoActivityIndicator(
              radius: 20,
              color: CupertinoColors.activeBlue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Text(
                    'Alert Dialog',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return CupertinoAlertDialog(
                          title: Text('Danger'),
                          actions: [
                            CupertinoButton(
                                child: Text('Cancel'), onPressed: () {}),
                            CupertinoButton(
                                child: Text('Save'), onPressed: () {})
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            CupertinoButton.filled(
              child: Text('Enter'),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Text('Date_Picker'),
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
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Text('Timer_Picker'),
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return Container(
                          height: 200,
                          child: CupertinoTimerPicker(
                            onTimerDurationChanged: (value) {
                              (Duration value) {};
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            CupertinoListTile(
              leading: Icon(CupertinoIcons.device_phone_portrait),
              trailing: Text('\$1500'),
              title: Text('Apple'),
              subtitle: Text('I phone 15'),
            ),
          ],
        ),
      ),
    );
  }
}
