import 'package:ai_assistant/controller/chat_controller.dart';
import 'package:ai_assistant/model/message.dart';
import 'package:ai_assistant/widget/message_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatbotFeature extends StatefulWidget {
  const ChatbotFeature({super.key});

  @override
  State<ChatbotFeature> createState() => _ChatbotFeatureState();
}

class _ChatbotFeatureState extends State<ChatbotFeature> {
  final _c = ChatController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ai ChatBot'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
                child: TextFormField(
              controller: _c.chatInputController,
              onTapOutside: (e) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Ask me anything...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: IconButton(
                  onPressed: _c.askQuestion,
                  icon: const Icon(Icons.send),
                ),
              ),
            ))
          ],
        ),
      ),
      body: Obx(
        () => ListView(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          children: _c.chatList.map((e) => MessageCard(message: e)).toList(),
        ),
      ),
    );
  }
}
