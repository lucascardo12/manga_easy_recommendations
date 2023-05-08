import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/organisms/screen_recommedation_manga.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/organisms/teste.dart';

class RecommendationPage extends StatelessWidget {
  static const route = '/recommendation-screen';
  const RecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const CoffeeText(
              text: 'Hellsing', typography: CoffeeTypography.title),
        ),
        body: const ExampleParallax());
  }
}
