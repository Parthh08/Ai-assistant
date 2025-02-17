import 'package:ai_assistant/apis/apis.dart';
import 'package:ai_assistant/model/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageController extends GetxController {
  final textC = TextEditingController();
  Future<void> createAiImage() async {
    final question = textC.text.trim();
    if (question.isNotEmpty) {
      
    }
  }
}
