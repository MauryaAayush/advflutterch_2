import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Sliver_Provider.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DisplayTypeProvider(),
      child: Consumer<DisplayTypeProvider>(
        builder: (context, provider, _) {
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

                // Add an icon above the SliverList
                SliverToBoxAdapter(
                  child: IconButton(
                    icon: Icon(provider.isGrid ? Icons.list : Icons.grid_view),
                    onPressed: () {
                      provider.toggleDisplayType();
                    },
                  ),
                ),

                // Use a conditional statement based on provider.isGrid to switch between SliverList and SliverGrid
                provider.isGrid
                    ? SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final random = Random();
                          final randomColor = Color.fromARGB(
                            255,
                            random.nextInt(200),
                            random.nextInt(256),
                            random.nextInt(256),
                          );

                          return ViewContainer(randomColor);
                        }),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2))
                    : SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            // Generate a random color
                            final random = Random();
                            final randomColor = Color.fromARGB(
                              255,
                              random.nextInt(200),
                              random.nextInt(256),
                              random.nextInt(256),
                            );

                            return ViewContainer(randomColor);
                          },
                          childCount: 15,
                        ),
                      ),
              ],
            ),
          );
        },
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
