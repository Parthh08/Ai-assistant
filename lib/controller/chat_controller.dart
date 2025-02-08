import 'package:ai_assistant/model/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final chatList = <Message>[].obs;
  final chatInputController = TextEditingController();

void askQuestion() {
    final question = chatInputController.text.trim();
    if (question.isNotEmpty) {
      //user
      chatList.add(Message(msg: question, msgType: MessageType.user));
      chatInputController.clear();

      //bot
      chatList.add(Message(msg: 'I am a bot', msgType: MessageType.bot));
    }
  }

}
