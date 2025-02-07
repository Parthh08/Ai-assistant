import 'package:flutter/material.dart';

class ChatbotFeature extends StatefulWidget {
  const ChatbotFeature({super.key});

  @override
  State<ChatbotFeature> createState() => _ChatbotFeatureState();
}

class _ChatbotFeatureState extends State<ChatbotFeature> {
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
              onTapOutside: (e) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Ask me anything...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
              ),
            ))
          ],
        ),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
