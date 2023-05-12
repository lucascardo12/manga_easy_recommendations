import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class RecommendationNotFoundStatePage extends StatelessWidget {
  const RecommendationNotFoundStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CoffeeImage.unicorn(
          AssetsUnicorn.sad,
          width: 125,
          height: 125,
        ),
        const CoffeeText(
          text: 'Ocorreu algum error, tente novamente mais tarde',
        )
      ],
    );
  }
}

