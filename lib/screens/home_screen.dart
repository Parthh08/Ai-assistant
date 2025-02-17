import 'package:ai_assistant/apis/apis.dart';
import 'package:ai_assistant/global.dart';
import 'package:ai_assistant/helper/pref.dart';
import 'package:ai_assistant/model/home_type.dart';
import 'package:ai_assistant/widget/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnboarding = false;
  }

  @override
  Widget build(BuildContext context) {
    // Animate.restartOnHotReload = true;
    //Apis.getAnswer('What is the capital of UAE?');
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          // backgroundColor: appBarColor,
          elevation: 1,
          title: const Text(
            'Ai Assistant',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {
                    Get.changeThemeMode(
                      Pref.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                    );
                    Pref.isDarkMode = !Pref.isDarkMode;
                  },
                  icon: const Icon(
                    Icons.brightness_4_outlined,
                  )),
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          children: HomeType.values
              .map((e) => HomeCard(
                    homeType: e,
                  ))
              .toList(),
        ).animate().fade(duration: NumDurationExtensions(2).seconds));
  }
}
