import 'package:ai_assistant/controller/image_controller.dart';
import 'package:ai_assistant/global.dart';
import 'package:flutter/material.dart';

class ImageGeneratorFeature extends StatefulWidget {
  const ImageGeneratorFeature({super.key});

  @override
  State<ImageGeneratorFeature> createState() => _ImageGeneratorFeatureState();
}

class _ImageGeneratorFeatureState extends State<ImageGeneratorFeature> {
  final _c = ImageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text('Ai Image Generator'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding:
            const EdgeInsets.only(top: 20, bottom: 40, left: 20, right: 20),
        children: [
          TextFormField(
            minLines: 2,
            maxLines: null,
            // controller: _c.chatInputController,
            onTapOutside: (e) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              isDense: true,
              hintText: 'Generate image from text...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              suffixIcon: IconButton(
                onPressed: _c.askQuestion,
                icon: const Icon(Icons.send),
              ),
            ),
          ),

          //image
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/ai_image_creator.jpg',
            height: 340,
          ),

          //generate button
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text(
                'Generate Image',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
