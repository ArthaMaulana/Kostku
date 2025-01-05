import 'package:flutter/material.dart';
import 'package:kos/views/auth/login.dart';
import 'package:kos/views/dashboard/utility/splash4.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 30),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 60),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/chill.png',
                  width: 300,
                ),
                SizedBox(height: 40),
                Text(
                  'Quick and Secure Boarding House Search',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'We offer convenience and security in finding \nboarding houses anytime.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 160),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(4, (index) {
                  return Container(
                    margin: EdgeInsets.only(
                        left: index == 0 ? 30.0 : 4.0, right: 4.0),
                    width: 8.0,
                    height: index == 2 ? 16.0 : 8.0,
                    decoration: BoxDecoration(
                      shape: index == 2 ? BoxShape.rectangle : BoxShape.circle,
                      borderRadius:
                          index == 2 ? BorderRadius.circular(4.0) : null,
                      color: index == 2
                          ? Colors.lightGreenAccent
                          : Colors.purple[100],
                    ),
                  );
                }),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Splash4()));
                  },
                  backgroundColor: Colors.lightGreenAccent,
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
