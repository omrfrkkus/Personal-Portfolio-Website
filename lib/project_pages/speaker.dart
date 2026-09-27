import 'package:flutter/material.dart';
import '../widgets/project_gallery.dart';

class Speaker extends StatelessWidget {
  const Speaker({super.key, required this.height});

  final double height;

  static const _assets = [
    'images/excursion_demo.gif',
    'images/advanced_front.jpg',
    'images/advanced_back.jpg',
    'images/advanced_inside.png',
    'images/sphere_tws.jpg',
    'images/sphere_inside.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ProjectImageGrid(
      assets: _assets,
      height: height,
    );
  }
}
