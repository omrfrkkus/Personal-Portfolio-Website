import 'package:flutter/material.dart';
import '../widgets/project_gallery.dart';

class Pencil extends StatelessWidget {
  const Pencil({super.key, required this.height});
  final double height;

  static const _assets = [
    'images/pencil.gif',
    'images/pencil0.png',
    'images/pencil1.png',
    'images/pencil2.png',
    'images/pencil3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ProjectImageGrid(
      assets: _assets,
      height: height,
    );
  }
}
