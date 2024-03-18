import 'package:flutter/material.dart';

enum ArrowType {
  left,
  right,
}

class PageArrow extends StatelessWidget {
  final bool hide;
  final bool arrowVisible;
  final VoidCallback onTap;
  final ArrowType type;

  const PageArrow({
    super.key,
    required this.hide,
    required this.arrowVisible,
    required this.onTap,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (hide) return;
        onTap();
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: hide
            ? 0.0
            : arrowVisible
                ? 1
                : 0.5,
        child: Container(
          color: Colors.white30,
          child: Icon(
            size: 30.0,
            color: Colors.white,
            type == ArrowType.left
                ? Icons.keyboard_arrow_left_sharp
                : Icons.keyboard_arrow_right_sharp,
          ),
        ),
      ),
    );
  }
}
