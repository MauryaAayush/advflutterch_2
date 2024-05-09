import 'package:advflutterch_2/Screens/Cupertino_Sliver(lect-3)/Views/CupertinoListSection_2.dart';
import 'package:flutter/cupertino.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text("Settings"),
          trailing: GestureDetector(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const Screen2(),
                ));
              },
              child: const Icon(CupertinoIcons.right_chevron)),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  // hasScrollBody: true,
                  child: Column(
                    children: [
                      CupertinoListSection(
                        children: [
                          CupertinoListTile.notched(
                            title: const Text(
                              'General',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/settings.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Display & Brightness ',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/display.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Wallpaper',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/wall.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Sounds',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/sound.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Touch ID & Passcode',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/pass.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Privacy',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/privacy.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                        ],
                      ),
                      CupertinoListSection(
                        children: [
                          CupertinoListTile.notched(
                            title: const Text(
                              'iCloud',
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w400),
                            ),
                            subtitle: const Text('aayush@9to5mac.com'),
                            leading: Image.asset('assets/images/cloud.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'iTune & App Store ',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/app.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Passbook & Apple Pay',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/apple.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                        ],
                      ),
                      CupertinoListSection(
                        children: [
                          CupertinoListTile.notched(
                            title: const Text(
                              'Mail, Contacts, Calendars',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/mail.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Notes ',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/notes.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Reminders',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/images/reminder.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
