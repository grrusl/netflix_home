import 'package:flutter/material.dart';
import 'package:netflix_home/features/movies/model/model.dart' show MovieModel;

import '../details_screen_mobile.dart';

void showDetailsScreen({
  required BuildContext context,
  required UniqueKey tag,
  required MovieModel movie,
}) {
  Navigator.push(
    context,
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 500),
      reverseTransitionDuration: const Duration(milliseconds: 500),
      opaque: false,
      // fullscreenDialog: true,
      barrierColor: Colors.transparent,
      barrierDismissible: true,
      transitionsBuilder: (context, animation, _, child) {
        final scaleCurved = CurvedAnimation(
          parent: animation,
          curve: const Interval(0.0, 0.6, curve: Curves.linear),
          reverseCurve: const Interval(0.4, 0.7, curve: Curves.linear),
        );
        final fadeCurved = CurvedAnimation(
          parent: animation,
          curve: const Interval(0.4, 0.8, curve: Curves.linear),
          reverseCurve: const Interval(0.6, 1.0, curve: Curves.linear),
        );

        final fadeTween = Tween(begin: 0.0, end: 1.0);
        final scaleTween = Tween(begin: 0.5, end: 1.0);
        return ScaleTransition(
          scale: scaleCurved.drive(scaleTween),
          child: FadeTransition(
            opacity: fadeCurved.drive(fadeTween),
            child: child,
          ),
        );
      },
      pageBuilder: (BuildContext context, start, finish) {
        return DetailsScreen(
          tag: tag,
          movie: movie,
        );
      },
    ),
  );
}
