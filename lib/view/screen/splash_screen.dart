import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
            (){
          Navigator.of(context).pushReplacementNamed('/home');
        }
    );
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              alignment: Alignment.center,
              child: Text(
                '🤣',
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Daily Jokes',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
