import 'package:flutter/material.dart';

class Johnny extends StatelessWidget {
  const Johnny({super.key, required this.height});
  final double height;

  static const _assets = [
    'images/johnny.gif',
    'images/johnny0.png',
    'images/johnny1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: _assets.length,
        itemBuilder: (_, index) {
          return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              _assets[index],
              errorBuilder: (_, __, ___) => const SizedBox(
                width: 260,
                child: Center(child: Icon(Icons.broken_image_outlined)),
              ),
            ),
          );
        },
      ),
    );
  }
}
