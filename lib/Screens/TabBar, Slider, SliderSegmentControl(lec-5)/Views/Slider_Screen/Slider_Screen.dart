import 'package:advflutterch_2/Screens/TabBar,%20Slider,%20SliderSegmentControl(lec-5)/Provider/Slider_Screen_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: "Settings",
        middle: Text('Display & Brightness'),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoListSection(
                header: Text(
                  'APPEARANCE',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 180,
                              width: 90,
                              decoration: BoxDecoration(
                                color: CupertinoColors.systemTeal,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/slider/light.png'),fit: BoxFit.contain)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Light'),
                            ),
                            CupertinoRadio(
                              value: Brightness.light,
                              groupValue: Provider.of<SlidingScreenProvider>(context,listen: true).brightness,
                              onChanged: (value) {
                                Provider.of<SlidingScreenProvider>(context,listen: false).changeTheme(value ?? Brightness.light);                           },
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 180,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/slider/dark.png'),fit: BoxFit.contain)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Dark'),
                            ),
                            CupertinoRadio(
                              value: Brightness.dark,
                              groupValue: Provider.of<SlidingScreenProvider>(context,listen: true).brightness,
                              onChanged: (value) {
                                Provider.of<SlidingScreenProvider>(context,listen: false).changeTheme(value ?? Brightness.dark);
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Automatic',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        CupertinoSwitch(
                          value: Provider.of<SlidingScreenProvider>(context,
                                  listen: true)
                              .isAutomatic,
                          onChanged: (value) {
                            Provider.of<SlidingScreenProvider>(context,
                                    listen: false)
                                .automatic(value);
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                header: Text('BRIGHTNESS',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    )),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(CupertinoIcons.sun_min_fill,color: CupertinoColors.systemGrey,),

                      SizedBox(
                        width: 280,
                        child: CupertinoSlider(
                          min: 0,
                          max: 100,
                          divisions: 10,
                          value: Provider.of<SlidingScreenProvider>(context,
                                  listen: true)
                              .Rangeslindervalue,
                          onChanged: (value) {
                            Provider.of<SlidingScreenProvider>(context,listen: false).rangeSliderChangeValue(value);
                          },
                        ),
                      ),
                      Icon(CupertinoIcons.sun_max_fill,color: CupertinoColors.systemGrey),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'True Tone',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        CupertinoSwitch(
                          value: Provider.of<SlidingScreenProvider>(context,
                                  listen: true)
                              .isTruetone,
                          onChanged: (value) {
                            Provider.of<SlidingScreenProvider>(context,
                                    listen: false)
                                .truetone(value);
                          },
                        )
                      ],
                    ),
                  ),
                ],
                footer: Text(
                  'Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              CupertinoListSection(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Night Shift',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Text(
                          'Sunset to Sunrise',
                          style: TextStyle(
                              color: CupertinoColors.systemGrey,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                          color: CupertinoColors.systemGrey3,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Auto-Lock',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 187,
                        ),
                        Text(
                          '3 Minutes',
                          style: TextStyle(
                              color: CupertinoColors.systemGrey,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                          color: CupertinoColors.systemGrey3,
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Raise to wake',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        CupertinoSwitch(
                          value: Provider.of<SlidingScreenProvider>(context,
                                  listen: true)
                              .isRaiseToWake,
                          onChanged: (value) {
                            Provider.of<SlidingScreenProvider>(context,
                                    listen: false)
                                .raisetowake(value);
                          },
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
