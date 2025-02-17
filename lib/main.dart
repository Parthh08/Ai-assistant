import 'package:ai_assistant/apis/apis.dart';
import 'package:ai_assistant/global.dart';
import 'package:ai_assistant/helper/pref.dart';
import 'package:ai_assistant/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Pref.initialize();
  await Apis.init();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: Pref.defaultTheme(),
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: false,
            scaffoldBackgroundColor: Colors.grey[400],
            appBarTheme: AppBarTheme(
              elevation: 1,
              centerTitle: true,
              backgroundColor: Colors.grey[900],
              iconTheme: const IconThemeData(color: Colors.grey),
              titleTextStyle: const TextStyle(color: Colors.grey),
            )),
        title: 'Ai Assistant',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: false,
            appBarTheme: AppBarTheme(
              elevation: 1,
              centerTitle: true,
              backgroundColor: appBarColor,
              iconTheme: const IconThemeData(color: Colors.black),
              titleTextStyle: const TextStyle(color: Colors.black),
            )),
        home: const SplashScreen());
  }
}

extension AppTheme on ThemeData {
//text color
  Color get textColor =>
      brightness == Brightness.dark ? Colors.white : Colors.black;

//button color
  Color? get buttonColor =>
      brightness == Brightness.dark ? Colors.grey[700] : Colors.blue;
}
