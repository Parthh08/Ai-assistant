import 'package:ai_assistant/model/message.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final Message message;
  const MessageCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return message.msgType == MessageType.bot
        ? Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 19,
                  child: Image.asset(
                    'assets/images/assistant.png',
                    width: 26,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: message.msg.isEmpty
                      ? AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              '...',
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              speed: const Duration(milliseconds: 60),
                            ),
                          ],
                          repeatForever: true,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                        )
                      : Text(message.msg),
                ),
              ],
            ),
          )
        :

        //user
        Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7,
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Text(message.msg)),
                const SizedBox(
                  width: 15,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 19,
                  child: Icon(Icons.person),
                ),
              ],
            ),
          );
  }
}
