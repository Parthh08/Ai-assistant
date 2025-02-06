import 'package:google_generative_ai/google_generative_ai.dart';

import 'package:ai_assistant/global.dart';

class Apis {
  static Future<void> getAnswer(String question) async {
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: apiKey,
    );

    final content = [Content.text(question)];
    final response = await model.generateContent(content);

    // Printing response in log
    print('res: ${response.text}');
  }
}