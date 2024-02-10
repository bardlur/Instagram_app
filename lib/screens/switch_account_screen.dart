import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/main_screen.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/switch_account_background.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 270,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10.0,
                        sigmaY: 10.0,
                      ),
                      child: Container(
                        height: 352,
                        width: 340,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2)
                            ]
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Image.asset(
                              'images/bardlur.png',
                              height: 120,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Bardia Khademi',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 46,
                              width: 129,
                              child: ElevatedButton(
                                style: 
                                    Theme.of(context).elevatedButtonTheme.style,
                                onPressed: () {
                                  Navigator.of(context)
                                    .push(MaterialPageRoute(
                                      builder: (context) => MainScreen(),
                                    ),
                                  );
                                }, 
                                child: Text(
                                  'Continue',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Text(
                              'Switch account',
                              style: Theme.of(context).textTheme.headline4
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t hava an account? ',
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Colors.grey[600],
                    fontSize: 16
                  ),
                ),
                Text(
                  ' Sign up',
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Colors.white,
                    fontSize: 16
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

