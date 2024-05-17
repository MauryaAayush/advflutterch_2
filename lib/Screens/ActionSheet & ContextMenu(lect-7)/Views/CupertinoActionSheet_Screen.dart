import 'package:flutter/cupertino.dart';
import 'CupertinoContextMenu_SCreen.dart';

class ActionsheetScreen extends StatelessWidget {
  const ActionsheetScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Action Sheet'),
        trailing: GestureDetector(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => ContextMenuScreen(),
              ));
            },
            child: Icon(CupertinoIcons.right_chevron)),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoActionSheet(
                  title: Text(
                    'Action Sheet ',
                  ),
                  message: Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      'Radhey radhey',
                    ),
                  ),
                  actions: [
                    CupertinoActionSheetAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Default Action',
                      ),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Normal Action',
                      ),
                    ),
                    CupertinoActionSheetAction(
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Destructive Action',
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
                          color: CupertinoColors.systemBlue,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Action Sheet'),
        ),
      ),
    );
  }
}
