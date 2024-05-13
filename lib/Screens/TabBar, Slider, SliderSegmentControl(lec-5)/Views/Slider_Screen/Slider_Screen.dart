import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/slider/light.png'))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Light'),
                            ),
                            CupertinoRadio(
                              value: true,
                              groupValue: true,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/slider/light.png'))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Dark'),
                            ),
                            CupertinoRadio(
                              value: true,
                              groupValue: true,
                              onChanged: (value) {},
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
                          value: false,
                          onChanged: (value) {},
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
                    children: [
                      Icon(CupertinoIcons.sun_min_fill),
                      CupertinoSlider(
                        value: 0.8,
                        onChanged: (value) {},
                      ),
                      Icon(CupertinoIcons.sun_max_fill),
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
                          value: false,
                          onChanged: (value) {},
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
                          value: false,
                          onChanged: (value) {},
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
