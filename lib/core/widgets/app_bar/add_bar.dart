import 'dart:ui';

import 'package:flutter/material.dart';

import 'flexible_space.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final minH = kToolbarHeight + MediaQuery.paddingOf(context).top;
    final maxH = minH + 45;
    return SliverAppBar(
      title: const Text('For Mindful'),
      centerTitle: false,
      snap: true,
      floating: true,
      pinned: true,
      expandedHeight: kToolbarHeight + 45,
      flexibleSpace: Stack(
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          FlexibleSpace(
            maxHeight: maxH,
            minHeight: minH + 20,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.connected_tv_sharp),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
