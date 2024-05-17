import 'dart:math';

import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              'Sliver App Bar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://www.shutterstock.com/image-photo/aerial-view-nature-green-forest-260nw-2375963069.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),


          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) {
          //       // Generate a random color
          //       final random = Random();
          //       final randomColor = Color.fromARGB(
          //         255,
          //         random.nextInt(200),
          //         random.nextInt(256),
          //         random.nextInt(256),
          //       );
          //
          //       return ViewContainer(randomColor);
          //     },
          //     childCount: 15,
          //   ),
          // ),

          SliverGrid(delegate: SliverChildBuilderDelegate((context, index) {

            final random = Random();
            final randomColor = Color.fromARGB(
              255,
              random.nextInt(200),
              random.nextInt(256),
              random.nextInt(256),
            );


            return ViewContainer(randomColor);
          }), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
        ],
      ),
    );
  }

  Container ViewContainer(Color randomColor) {
    return Container(
                margin: EdgeInsets.all(5),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: randomColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              );
  }
}
