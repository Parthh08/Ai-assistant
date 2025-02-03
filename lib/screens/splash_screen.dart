import 'package:ai_assistant/helper/pref.dart';
import 'package:ai_assistant/screens/home_screen.dart';
import 'package:ai_assistant/screens/onborading_screen.dart';
import 'package:ai_assistant/widget/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      // Navigator.of(context).pushReplacement(
      //     MaterialPageRoute(builder: (context) => Pref.showOnboarding? const OnboradingScreen():const HomeScreen()));

      Get.off(() =>
          Pref.showOnboarding ? const OnboradingScreen() : const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            // Card(
            //   elevation: 1,
            //   // color: Colors.blue[400],
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(15),
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(18.0),
            //     child: Image.asset(
            //       'assets/images/assistant.png',
            //       width: 200,
            //       height: 200,
            //     ),
            //   ),
            // ),
            Spacer(),
            CustomLoading(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
