import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final Icon icon;
  final String label;

  const IconTextButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 40.0,
          child: icon,
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white38, fontSize: 10),
        ),
      ],
    );
  }
}
