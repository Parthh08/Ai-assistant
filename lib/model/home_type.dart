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
}
  