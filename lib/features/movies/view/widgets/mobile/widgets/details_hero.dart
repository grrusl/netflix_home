import 'package:flutter/material.dart';

class DetailsHero extends StatelessWidget {
  final Animation<double> animation;
  final String poster;

  const DetailsHero({
    super.key,
    required this.poster,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: Image.network(
        poster,
        fit: BoxFit.contain,
      ),
      builder: (BuildContext ct, Widget? child) {
        return Opacity(opacity: 1.0 - animation.value, child: child);
      },
    );
  }
}
