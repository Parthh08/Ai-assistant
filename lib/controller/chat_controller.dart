import 'package:ai_assistant/apis/apis.dart';
import 'package:ai_assistant/model/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final chatList = <Message>[].obs;
  final chatInputController = TextEditingController();

  Future<void> askQuestion() async {
    final question = chatInputController.text.trim();
    if (question.isNotEmpty) {
      //user
      chatList.add(Message(msg: question, msgType: MessageType.user));

      final res = await Apis.getAnswer(chatInputController.text);
      chatInputController.clear();
      //bot
      chatList.add(Message(msg: res!, msgType: MessageType.bot));
    }
  }
}
