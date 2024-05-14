import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Page_Provider_Screen.dart';
import 'home_Screen.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage('assets/images/3.png'))),
              ),

              SizedBox(
                height: 10,
              ),

              Text(
                'Simple To use',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                "            The file App simplifies document management with intuitive tools , secure cloud integration.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(
                height: 50,
              ),

              GestureDetector(
                onTap: () {
                  Provider.of<IntroProvider>(context,listen: false).setdata();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Home()));

                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text("Get Started",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2,
                  ),),
                ),
              ),

              SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.grey.shade300,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.grey.shade300,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.orange
                  )
                ],
              )

            ],
          ),
        ));


  }
}


