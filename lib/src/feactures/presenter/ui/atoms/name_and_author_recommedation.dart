import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class NameAndAuthorRecommedation extends StatelessWidget {
  final String nameManga;
  final String nameAuthor;
  final String data;
  const NameAndAuthorRecommedation(
      {super.key,
      required this.nameManga,
      required this.nameAuthor,
      required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CoffeeText(text: nameManga, typography: CoffeeTypography.title),
        Row(
          children: [
            CoffeeText(
              text: nameAuthor,
              color: Colors.grey,
            ),
            CoffeeText(
              text: ' - $data',
              color: Colors.grey,
            )
          ],
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
