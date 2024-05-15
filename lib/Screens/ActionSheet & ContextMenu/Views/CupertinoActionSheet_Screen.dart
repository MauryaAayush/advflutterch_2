import 'package:flutter/cupertino.dart';

class CupertinoActionSheetScreen extends StatelessWidget {
  const CupertinoActionSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
        child: Text('ActionSheetButton'),
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) => CupertinoActionSheet(
              title: Text('ActionSheet'),
              message: Text('Radhey Radhey'),
              actions: [
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Default Action')),
                CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Normal Action')),
                CupertinoActionSheetAction(
                  isDestructiveAction: true,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Distructive Action')),
              ],

              cancelButton: CupertinoActionSheetAction(onPressed: () {
                Navigator.pop(context);
              }, child: Text('Cancel'))
            ),
          );
        },
      ),
    ));
  }
}
