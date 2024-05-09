import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino List Enhnace'),
      ),
      
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              // hasScrollBody: true,
              fillOverscroll: true,
              child: Column(
                children: [
                  CupertinoListSection.insetGrouped(
                    header: Text(
                      'SINGLE SELECTION',
                      style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                      ),
                    ),
                    footer: Text(
                      'Choose a single item from  a list of opitions.',
                      style: TextStyle(
                          color: CupertinoColors.systemGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    children: [
                      CupertinoListTile.notched(
                        title: Text('Off'),
                        trailing: Icon(
                          CupertinoIcons.checkmark_alt,
                          color: CupertinoColors.activeBlue,
                        ),
                      ),
                      // Divider(color: CupertinoColors.white,),
                      CupertinoListTile.notched(
                        title: Text('Wifi'),
                      ),
                      CupertinoListTile.notched(title: Text('Mobile Data')),
                    ],
                  ),
                  CupertinoListSection.insetGrouped(
                    header: Text(
                      'MULTIPLE SELECTION',
                      style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                      ),
                    ),
                    footer: Text(
                      'Choose a multiple item from  a list of opitions.',
                      style: TextStyle(
                          color: CupertinoColors.systemGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    children: [
                      CupertinoListTile.notched(
                        title: Text('Option one',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: CupertinoColors.systemGrey
                        ),),
                        subtitle: Text('Disabled and Selected'),
                        leading: Icon(
                          CupertinoIcons.checkmark_alt,
                          color: CupertinoColors.activeBlue,
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Option two',style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),),
                        subtitle: Text('With subtitle'),
                        leading: Container(),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Option three',style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),),
                        leading: Icon(CupertinoIcons.checkmark_alt,
                          color: CupertinoColors.activeBlue,),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Option four',style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),),
                        leading: Container(),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Option five',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: CupertinoColors.systemGrey
                        ),),
                        subtitle: Text('Disabled and not Selected'),
                        leading: Container(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
