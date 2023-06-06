import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class BuildTitleAndSubtitle {
  final String name;
  final String artistic;
  final String date;

  BuildTitleAndSubtitle({
    required this.name,
    required this.artistic,
    required this.date,
  });
  Widget titleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoffeeText(
            text: name,
            typography: CoffeeTypography.title,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CoffeeText(
                text: '$artistic - $date',
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
