import 'package:flutter/material.dart';

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
    return LayoutBuilder(
      builder: (context, constraints) {
        const footerHeight = 160.0;
        const horizontalPadding = 32.0;
        const gridSpacing = 16.0;
        final isDesktop = constraints.maxWidth >= 600;
        final columnCount = isDesktop ? 3 : 1;
        final childAspectRatio = isDesktop ? 1.7 : 3.5;
        final rowCount = (_assets.length / columnCount).ceil();
        final tileWidth = (constraints.maxWidth -
                horizontalPadding -
                ((columnCount - 1) * gridSpacing)) /
            columnCount;
        final tileHeight = tileWidth / childAspectRatio;
        final contentHeight = horizontalPadding +
            (rowCount * tileHeight) +
            ((rowCount - 1) * gridSpacing);
        final availableHeight =
            MediaQuery.sizeOf(context).height - footerHeight;
        final galleryHeight = contentHeight < availableHeight
            ? contentHeight
            : availableHeight.clamp(240.0, height).toDouble();

        return SizedBox(
          height: galleryHeight,
          child: GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columnCount,
              crossAxisSpacing: gridSpacing,
              mainAxisSpacing: gridSpacing,
              childAspectRatio: childAspectRatio,
            ),
            itemCount: _assets.length,
            itemBuilder: (_, index) {
              return Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  _assets[index],
                  fit: BoxFit.contain,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
