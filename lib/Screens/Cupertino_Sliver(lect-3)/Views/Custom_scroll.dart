import 'package:flutter/cupertino.dart';

import 'CupertinoListSection.dart';

class Custom_Scroll extends StatelessWidget {
  const Custom_Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: CupertinoPageScaffold(
          child: CustomScrollView(
           slivers: [
            CupertinoSliverNavigationBar(
            automaticallyImplyLeading: false,
            largeTitle: Text('My people'),
            trailing: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => Screen1(),
                  ));
                },
                child: Icon(CupertinoIcons.right_chevron)),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CupertinoListTile(
                  title: Text(
                    'Person ${index + 1}',
                    style: TextStyle(
                      letterSpacing: 1,
                    ),
                  ),
                  subtitle: Text("${index + 1}".toString()),
                );
              },
              childCount: 25,
            ),
          )

          // SliverFillRemaining(
          //   hasScrollBody: true,
          //   child: Expanded(
          //     child: CupertinoListSection(
          //       children: [
          //         ...List.generate(
          //             16,
          //             (index) => CupertinoListTile(
          //                   title: Text('Hello $index '),
          //                   subtitle: Text(index.toString()),
          //                 )),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      )),
    );
  }
}
