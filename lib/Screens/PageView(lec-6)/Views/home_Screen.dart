import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),),
    );
  }
}