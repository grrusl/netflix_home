import 'package:flutter/material.dart';
import 'package:netflix_home/core/constants/constants.dart' show Breakpoints;

(Size, double) getMovieWidth(BuildContext context) {
  final width = MediaQuery.of(context).size.width - 100;
  final contentWidth = width / getRatio(context, width);
  const ratio = 16 / 9;
  final movieSize = Size(contentWidth, contentWidth / ratio);
  final rowHeight = movieSize.height + 5 + 15 + 30;
  return (movieSize, rowHeight);
}

double getRatio(BuildContext context, [double? width]) {
  width ??= MediaQuery.of(context).size.width - 100;
  if (width >= Breakpoints.largeScreenSize) return 6;
  if (width >= Breakpoints.mediumScreenSize) return 5;
  if (width >= Breakpoints.tabletScreenSize) return 4;
  if (width >= Breakpoints.mobileScreenSize) return 3;
  return 2;
}

Size movieSinglePreview(BuildContext context) {
  final ratio = getRatio(context);
  if (ratio >= 6) {
    return const Size(400, 350);
  } else if (ratio > 3) {
    return const Size(300, 300);
  }
  return const Size(250, 260);
}
