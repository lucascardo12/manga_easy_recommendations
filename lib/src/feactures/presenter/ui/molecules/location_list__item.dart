import 'package:flutter/material.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/atomic/build_gradient.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/atomic/build_parallax_background.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/atomic/build_title_and_subtitle.dart';

class LocationListItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final GlobalKey _backgroundImageKey = GlobalKey();

  LocationListItem({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              BuildParallaxBackground(
                backgroundImageKey: _backgroundImageKey,
                linkImage: imageUrl,
              ).ParallaxBackground(context),
              BuildGradient().buildGradient(),
              BuildTitleAndSubtitle(name: name).titleAndSubtitle(),
            ],
          ),
        ),
      ),
    );
  }
}
