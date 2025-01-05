import 'package:flutter/material.dart';
import 'package:kos/views/auth/login.dart';
import 'package:kos/views/dashboard/utility/splash3.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

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
                  'assets/images/think.png',
                  width: 300,
                ),
                SizedBox(height: 40),
                Text(
                  'Analyze Your Preferences',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Receive boarding house recommendations tailored \nto your needs with smart analysis.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 175),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(4, (index) {
                  return Container(
                    margin: EdgeInsets.only(
                        left: index == 0 ? 30.0 : 4.0, right: 4.0),
                    width: 8.0,
                    height: index == 1 ? 16.0 : 8.0,
                    decoration: BoxDecoration(
                      shape: index == 1 ? BoxShape.rectangle : BoxShape.circle,
                      borderRadius:
                          index == 1 ? BorderRadius.circular(4.0) : null,
                      color: index == 1
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
                            builder: (context) => const Splash3()));
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
