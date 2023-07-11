import 'package:flutter/material.dart';

class box_card extends StatelessWidget {
  final Widget BoxContent;
  const box_card({super.key, required this.BoxContent});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          boxShadow: kElevationToShadow[3],
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor),
      child: BoxContent,
    );
  }
}
