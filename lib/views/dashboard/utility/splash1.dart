import 'package:flutter/material.dart';
import 'package:kos/views/auth/login.dart';
import 'package:kos/views/dashboard/utility/splash2.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

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
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/welcome.png',
                  width: 300,
                ),
                SizedBox(height: 40),
                Text(
                  'Welcome to the Kostku!',
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
          SizedBox(height: 180),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(4, (index) {
                  return Container(
                    padding: EdgeInsets.only(left: 2),
                    margin: EdgeInsets.only(left: 30),
                    width: 8.0,
                    height: index == 0 ? 20.0 : 8.0,
                    decoration: BoxDecoration(
                      shape: index == 0 ? BoxShape.rectangle : BoxShape.circle,
                      borderRadius:
                          index == 0 ? BorderRadius.circular(20.0) : null,
                      color: index == 0
                          ? Colors.lightGreenAccent
                          : Colors.blueGrey[100],
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
                      MaterialPageRoute(builder: (context) => const Splash2()),
                    ); // Tambahkan logika untuk beralih halaman
                  },
                  backgroundColor: Colors.lightGreenAccent,
                  child: Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
