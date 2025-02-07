import 'package:flutter/material.dart';

class ImageGeneratorFeature extends StatefulWidget {
  const ImageGeneratorFeature({super.key});

  @override
  State<ImageGeneratorFeature> createState() => _ImageGeneratorFeatureState();
}

class _ImageGeneratorFeatureState extends State<ImageGeneratorFeature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ai Image Generator'),
      ),
        body: ListView(
          children: [
            
          ],
        ),
    );;
  }
}