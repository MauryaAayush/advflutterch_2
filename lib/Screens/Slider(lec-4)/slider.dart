import 'package:advflutterch_2/Screens/Slider(lec-4)/Provider/Slider_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Slider_Screen extends StatelessWidget {
  const Slider_Screen({super.key});




  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
        child:Center(
          child: CupertinoSlider(
            min: 0,
            max: 100,
            divisions: 10,
            value: Provider.of<SliderProvider>(context,listen: true).SliderValue, onChanged: (value) {
          Provider.of<SliderProvider>(context,listen: false).onChangeSlider(value);
          },
          ),

        )


    );
  }
}
