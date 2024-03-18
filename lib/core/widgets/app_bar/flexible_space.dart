import 'package:flutter/material.dart';

class FlexibleSpace extends StatelessWidget {
  final double minHeight;
  final double maxHeight;

  const FlexibleSpace({
    super.key,
    required this.minHeight,
    required this.maxHeight,
  });

  double _calculateExpandRatio(BoxConstraints constraints) {
    var expandRatio =
        (constraints.maxHeight - minHeight) / (maxHeight - minHeight);
    if (expandRatio > 1.0) expandRatio = 1.0;
    if (expandRatio < 0.0) expandRatio = 0.0;

    return expandRatio;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        BuildContext ctx,
        BoxConstraints constraints,
      ) {
        final expandRatio = _calculateExpandRatio(constraints);
        final animation = AlwaysStoppedAnimation(expandRatio);

        return FadeTransition(
          opacity: animation,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                const SizedBox(width: NavigationToolbar.kMiddleSpacing),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('TV Shows'),
                ),
                const SizedBox(width: 8.0),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Movies'),
                ),
                const SizedBox(width: 8.0),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Categories'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
