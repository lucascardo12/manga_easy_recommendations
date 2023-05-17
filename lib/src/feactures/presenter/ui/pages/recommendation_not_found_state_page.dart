import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class RecommendationNotFoundStatePage extends StatelessWidget {
  final String mensage;
  const RecommendationNotFoundStatePage({super.key, required this.mensage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CoffeeImage.unicorn(
          AssetsUnicorn.sad,
          width: 125,
          height: 125,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: CoffeeText(
            text: mensage,
          ),
        )
      ],
    );
  }
}
