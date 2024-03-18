import 'package:flutter/material.dart';

extension TextExtention on TextSpan {
  TextSpan list(List<String> strings, [Color dotsColor = Colors.white38]) {
    final List<TextSpan> _list = [];
    for (var i = 0; i < strings.length; i++) {
      _list.add(TextSpan(
        text: strings[i],
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.white70,
        ),
      ));
      if (i != strings.length - 1) {
        _list.add(
          TextSpan(
            text: ' • ',
            style: TextStyle(color: dotsColor),
          ),
        );
      }
    }

    return TextSpan(
      children: _list,
    );
  }
}
