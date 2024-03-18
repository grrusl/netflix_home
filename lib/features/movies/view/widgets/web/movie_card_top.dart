import 'package:flutter/material.dart';

class MovieCardTop extends StatelessWidget {
  final String backdrop;

  const MovieCardTop({
    super.key,
    required this.backdrop,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      alignment: Alignment.topCenter,
      backdrop,
      fit: BoxFit.fitWidth,
    );
  }
}
