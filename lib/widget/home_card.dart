import 'package:ai_assistant/model/home_type.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final HomeType homeType;
  const HomeCard({Key? key, required this.homeType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: InkWell(
        onTap: homeType.OnTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 1,
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Image.asset(
                  homeType.image,
                  width: 160,
                  height: 160,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                homeType.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
