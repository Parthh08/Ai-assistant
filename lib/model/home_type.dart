import 'package:ai_assistant/screens/feature/chatbot_feature.dart';
import 'package:ai_assistant/screens/feature/image_creater.dart';
import 'package:ai_assistant/screens/feature/language_translator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum HomeType { Ai_ChatBot, Ai_Image, Ai_Translator }

extension MyHomeType on HomeType {
  String get title => switch (this) {
        HomeType.Ai_ChatBot => 'AI ChatBot',
        HomeType.Ai_Image => 'AI Image',
        HomeType.Ai_Translator => 'AI Translator',
      };

  String get image => switch (this) {
        HomeType.Ai_ChatBot => 'assets/images/ai_robot.jpg',
        HomeType.Ai_Image => 'assets/images/ai_image_creator.jpg',
        HomeType.Ai_Translator => 'assets/images/ai_language.jpg',
      };

      VoidCallback get OnTap => switch (this) {
        HomeType.Ai_ChatBot =>()=> Get.to(()=>const ChatbotFeature()),
        HomeType.Ai_Image =>()=> Get.to(()=>const ImageGeneratorFeature()),
        HomeType.Ai_Translator =>()=> Get.to(()=>const LanguageTranslatorFeature()),
      };
}
  