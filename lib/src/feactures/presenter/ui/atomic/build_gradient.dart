import 'package:flutter/material.dart';

class BuildGradient {
  Widget buildGradient() {
    return SizedBox(
      child: Positioned.fill(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                const Color.fromARGB(0, 0, 0, 0).withOpacity(0.7)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.6, 0.95],
            ),
          ),
        ),
      ),
    );
  }
}
