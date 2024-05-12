import 'package:flutter/cupertino.dart';

class Sliding_segment extends StatelessWidget {
  const Sliding_segment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CustomScrollView(
              
              slivers: [
               CupertinoSliverNavigationBar(
                 middle: Text('Text'),
               )
              ],
            )
          )),
    );
  }
}
