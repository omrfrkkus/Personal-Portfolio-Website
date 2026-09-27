import 'package:flutter/material.dart';
import '../widgets/project_gallery.dart';

class Adam extends StatelessWidget {
  const Adam({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return HorizontalProjectGallery(
      height: height,
      itemCount: 3,
      itemBuilder: (_, index) {
        return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset('images/adam$index.jpg'),
        );
      },
    );
  }
}
