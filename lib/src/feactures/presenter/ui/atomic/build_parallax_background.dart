import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/molecules/paralax.dart';

class BuildParallaxBackground {
  final GlobalKey backgroundImageKey;
  final String linkImage;

  BuildParallaxBackground({required this.backgroundImageKey, required this.linkImage});

  Widget ParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: backgroundImageKey,
      ),
      children: [
        CoffeeMangaCover(
          filtraImg: true,
          cover: linkImage,
          key: backgroundImageKey,
          height: 240,
        ),
      ],
    );
  }
}
