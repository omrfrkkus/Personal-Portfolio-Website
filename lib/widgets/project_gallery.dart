import 'package:flutter/material.dart';

ScrollbarThemeData _projectScrollbarTheme(ColorScheme colorScheme) {
  return ScrollbarThemeData(
    thumbColor: WidgetStatePropertyAll(
      colorScheme.primary.withValues(alpha: 0.9),
    ),
    trackColor: WidgetStatePropertyAll(
      colorScheme.surfaceContainerHighest.withValues(alpha: 0.7),
    ),
    trackBorderColor: WidgetStatePropertyAll(
      colorScheme.outlineVariant.withValues(alpha: 0.45),
    ),
    thickness: const WidgetStatePropertyAll(5),
    radius: const Radius.circular(8),
  );
}

class HorizontalProjectGallery extends StatefulWidget {
  const HorizontalProjectGallery({
    super.key,
    required this.height,
    required this.itemCount,
    required this.itemBuilder,
  });

  final double height;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  @override
  State<HorizontalProjectGallery> createState() =>
      _HorizontalProjectGalleryState();
}

class _HorizontalProjectGalleryState extends State<HorizontalProjectGallery> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth >= 600;
          final scrollView = SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 22),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: constraints.maxWidth - 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.itemCount,
                  (index) => widget.itemBuilder(context, index),
                ),
              ),
            ),
          );

          if (isDesktop) {
            return scrollView;
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: ScrollbarTheme(
              data: _projectScrollbarTheme(Theme.of(context).colorScheme),
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                trackVisibility: true,
                interactive: true,
                child: scrollView,
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProjectImageGrid extends StatefulWidget {
  const ProjectImageGrid({
    super.key,
    required this.assets,
    required this.height,
  });

  final List<String> assets;
  final double height;

  @override
  State<ProjectImageGrid> createState() => _ProjectImageGridState();
}

class _ProjectImageGridState extends State<ProjectImageGrid> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const footerHeight = 160.0;
        const horizontalPadding = 32.0;
        const gridSpacing = 16.0;
        final isDesktop = constraints.maxWidth >= 600;
        final columnCount = isDesktop ? 3 : 1;
        final childAspectRatio = isDesktop ? 1.7 : 1.6;
        final rowCount = (widget.assets.length / columnCount).ceil();
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
            : availableHeight.clamp(180.0, widget.height).toDouble();
        final grid = GridView.builder(
          controller: _scrollController,
          shrinkWrap: true,
          padding: EdgeInsets.fromLTRB(16, 16, 16, isDesktop ? 16 : 22),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columnCount,
            crossAxisSpacing: gridSpacing,
            mainAxisSpacing: gridSpacing,
            childAspectRatio: childAspectRatio,
          ),
          itemCount: widget.assets.length,
          itemBuilder: (_, index) {
            return Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                widget.assets[index],
                fit: isDesktop ? BoxFit.contain : BoxFit.cover,
              ),
            );
          },
        );

        if (isDesktop) {
          return SizedBox(height: galleryHeight, child: grid);
        }

        return SizedBox(
          height: galleryHeight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: ScrollbarTheme(
              data: _projectScrollbarTheme(Theme.of(context).colorScheme),
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                trackVisibility: true,
                interactive: true,
                child: grid,
              ),
            ),
          ),
        );
      },
    );
  }
}
