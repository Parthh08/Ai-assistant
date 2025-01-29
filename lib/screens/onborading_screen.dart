// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboradingScreen extends StatelessWidget {
  const OnboradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Lottie.asset('assets/lottie/new_ai.json'),
          //title

          const Text(
            'Ask me anything',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: 0.5),
          ),
          const SizedBox(height: 10),
          //subtitle
          const Text(
            'I can be your personal assistant & \nYou can ask me anything',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.5,
              letterSpacing: 0.5,
              color: Colors.black54,
            ),
          ),
          const Spacer(),
          //dots
          Wrap(
            spacing: 10,
            children: List.generate(
                2,
                (i) => Container(
                      width: 10,
                      height: 8,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    )),
          ),
          const Spacer(),
          //button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                elevation: 0,
                minimumSize: Size(40, 50)),
            onPressed: () {},
            child: const Text('Next'),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
