import 'package:flutter/cupertino.dart';

class IOS_Screen extends StatelessWidget {
  const IOS_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('IOS'),
        ),
        // child: Center(
        //   child: Container(
        //     height: 100,
        //     width: 100,
        //     color: CupertinoColors.activeBlue,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Icon(
                    CupertinoIcons.list_bullet_indent,
                    size: 30,
                    color: CupertinoColors.destructiveRed,
                  ),
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return CupertinoActionSheet(
                          title: Text(
                            'Favorite Dessert',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          message: Padding(
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
                                    color: Color(0xFF2196F3FF),
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
                                    color: Color(0xFF2196F3FF),
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
                                  color: Color(0xFF2196F3FF),
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
              color: CupertinoColors.destructiveRed,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Text('Alert Dialog',style: TextStyle(
                    fontSize: 20
                  ),),
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return CupertinoAlertDialog(
                          title: Text('Danger'),
                          actions: [
                            CupertinoButton(child: Text('Cancel'), onPressed: (){}),
                            CupertinoButton(child: Text('Save'), onPressed: (){})
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
