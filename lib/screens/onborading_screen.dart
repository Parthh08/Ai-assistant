// ignore_for_file: prefer_const_constructors

import 'package:ai_assistant/model/onboarding.dart';
import 'package:ai_assistant/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboradingScreen extends StatelessWidget {
  const OnboradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = PageController();

    final list = [
      //onboarding1
      Onboard(
          title: 'Ask me anything',
          subtitle:
              'I can be your personal assistant & \nYou can ask me anything',
          lottie: 'new_ai'),

      //onboarding2

      Onboard(
          title: 'Imagination to Reality',
          subtitle: 'Just Imagine & \nI will make it real for you',
          lottie: 'new_ai')
    ];
    return Scaffold(
      body: PageView.builder(
          controller: c,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Lottie.asset('assets/lottie/${list[index].lottie}.json'),
                //title

                Text(
                  list[index].title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.5),
                ),
                const SizedBox(height: 10),
                //subtitle
                Text(
                  list[index].subtitle,
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
                      list.length,
                      (i) => Container(
                            width: i == index ? 15 : 10,
                            height: 8,
                            decoration: BoxDecoration(
                                color: i == index ? Colors.blue : Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          )),
                ),
                const Spacer(),
                //button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      elevation: 0,
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                      minimumSize: Size(60, 50)),
                  onPressed: () {
                    if (index == list.length - 1) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                    } else {
                      c.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    }
                  },
                  child: Text(index == list.length - 1 ? 'Finish' : 'Next'),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            );
          }),
    );
  }
}
