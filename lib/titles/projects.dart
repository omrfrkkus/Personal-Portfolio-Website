import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../l10n/app_localizations.dart';
import 'package:omerfarukkus_flutter_website/project_pages/adam.dart';
import 'package:omerfarukkus_flutter_website/project_pages/gorilla.dart';
import 'package:omerfarukkus_flutter_website/project_pages/johnny.dart';
import 'package:omerfarukkus_flutter_website/project_pages/pencil.dart';
import 'package:omerfarukkus_flutter_website/project_pages/speaker.dart';
import 'package:omerfarukkus_flutter_website/services/launch_url_service.dart';

class Projects extends StatelessWidget {
  Projects({super.key, required this.isDesktop});

  final bool isDesktop;

  final List<Map<String, String>> projects = [
    {
      'title': 'Gorilla Workout Mobile App',
      'key': 'gorilla',
      'image': 'images/gorilla_light.gif',
      'github': 'https://github.com/omrfrkkus/Gorilla-Workout-App-Showcase',
    },
    {
      'title': 'Adam the Humanoid',
      'key': 'adam',
      'image': 'images/adam0.jpg',
      'github': 'https://github.com/omrfrkkus/Adam-Humanoid-Robot-Showcase',
    },
    {
      'title': 'Johnny the Humanoid',
      'key': 'johnny',
      'image': 'images/johnny.gif',
      'github': 'https://github.com/omrfrkkus/Johnny-Humanoid-Robot-Showcase',
    },
    {
      'title': 'Pencil 2D Platformer Game',
      'key': 'pencil',
      'image': 'images/pencil.gif',
      'github': 'https://github.com/omrfrkkus/Pencil-2D-Platformer-Showcase',
    },
    {
      'title': 'Advanced Acoustic Speaker Systems',
      'key': 'speaker',
      'image': 'images/excursion_demo.gif',
      'github':
          'https://github.com/omrfrkkus/Advanced-Acoustic-Systems-Showcase',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.projects,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        Divider(
          color: Theme.of(context).colorScheme.primary,
          thickness: 1,
          indent: isDesktop ? 64 : 32,
          endIndent: isDesktop ? 64 : 32,
        ),
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: isDesktop ? 1200 : 700),
            child: isDesktop
                ? GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(32),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 24,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: projects.length,
                    itemBuilder: (context, index) => _projectCard(
                      context,
                      projects[index],
                      isDesktop: true,
                    ),
                  )
                : LayoutBuilder(
                    builder: (context, constraints) {
                      // Mirror the previous mobile grid cell height so portrait
                      // thumbnails keep their size, while landscape thumbnails
                      // (pencil/speaker) hug their own aspect ratio.
                      final cellHeight = (constraints.maxWidth - 32) / 0.75;
                      return Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            for (var i = 0; i < projects.length; i++) ...[
                              if (i > 0) const SizedBox(height: 24),
                              if (_isDynamicThumbnail(projects[i]))
                                _projectCard(
                                  context,
                                  projects[i],
                                  isDesktop: false,
                                )
                              else
                                SizedBox(
                                  height: cellHeight,
                                  child: _projectCard(
                                    context,
                                    projects[i],
                                    isDesktop: false,
                                  ),
                                ),
                            ],
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ),
      ],
    );
  }

  bool _isDynamicThumbnail(Map<String, String> project) {
    return project['key'] == 'pencil' || project['key'] == 'speaker';
  }

  Widget _projectCard(
    BuildContext context,
    Map<String, String> project, {
    required bool isDesktop,
  }) {
    final isDynamicThumbnail = _isDynamicThumbnail(project);
    return Padding(
      padding: EdgeInsets.all(isDesktop ? 24 : 8),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () => _showProjectDialog(context, project),
          child: Padding(
            padding: EdgeInsets.all(isDesktop ? 16 : 12),
            child: Column(
              mainAxisSize: isDesktop || !isDynamicThumbnail
                  ? MainAxisSize.max
                  : MainAxisSize.min,
              mainAxisAlignment: isDynamicThumbnail
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: isDynamicThumbnail ? 0 : (isDesktop ? 16 : 8)),
                _projectThumbnail(
                  project['image']!,
                  isDesktop: isDesktop,
                  isDynamicThumbnail: isDynamicThumbnail,
                ),
                const SizedBox(height: 16),
                SelectableText(
                  project['title']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  AppLocalizations.of(context)!
                      .project_description(project['key']!),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  AppLocalizations.of(context)!.click_more,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _projectThumbnail(
    String image, {
    required bool isDesktop,
    required bool isDynamicThumbnail,
  }) {
    if (isDynamicThumbnail && !isDesktop) {
      // Mobile: size the landscape thumbnail by its own aspect ratio so the
      // card hugs it instead of centering it in a tall cell with letterboxing.
      // A small inset keeps a little breathing room from the card corners.
      return Padding(
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            image,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      );
    }
    if (isDynamicThumbnail) {
      return Expanded(
        child: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                image,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      );
    }
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset(
          image,
          fit: isDesktop ? BoxFit.cover : BoxFit.contain,
        ),
      ),
    );
  }

  void _showProjectDialog(BuildContext context, Map<String, String> project) {
    showDialog<String>(
      context: context,
      builder: (dialogContext) {
        final screenSize = MediaQuery.sizeOf(dialogContext);
        final desktop = screenSize.width >= 1000;
        final detailWidth = desktop
            ? math.min(screenSize.width, screenSize.height * 4 / 3)
            : screenSize.width;
        final mobileHeight = (screenSize.height * 0.42).clamp(240.0, 440.0);

        return Dialog.fullscreen(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: detailWidth),
              child: SafeArea(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final projectHeight = (project['key'] == 'pencil' ||
                                project['key'] == 'speaker') &&
                            !desktop
                        ? (constraints.maxHeight - 276).clamp(180.0, 700.0)
                        : mobileHeight;
                    final gallery = _getProjectWidget(
                      project['title']!,
                      isDesktop: desktop,
                      mobileHeight: projectHeight,
                    );
                    final description = ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 820),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: desktop ? 72 : 24,
                        ),
                        child: SelectableText(
                          AppLocalizations.of(context)!
                              .project_description(project['key']!),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                    final actions = _buildDialogActions(
                      context,
                      project,
                      desktop,
                    );
                    final isFixedMobileGallery = !desktop &&
                        (project['key'] == 'pencil' ||
                            project['key'] == 'speaker');

                    if (isFixedMobileGallery) {
                      return Column(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                gallery,
                                const SizedBox(height: 16),
                                description,
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                            child: actions,
                          ),
                        ],
                      );
                    }

                    if (!desktop) {
                      return Column(
                        children: [
                          Expanded(
                            child: LayoutBuilder(
                              builder: (context, viewport) {
                                return SingleChildScrollView(
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: viewport.maxWidth,
                                      minHeight: viewport.maxHeight,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        gallery,
                                        const SizedBox(height: 16),
                                        description,
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 12, 24, 16),
                            child: actions,
                          ),
                        ],
                      );
                    }

                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: constraints.maxWidth,
                          minHeight: constraints.maxHeight,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            gallery,
                            const SizedBox(height: 16),
                            description,
                            const SizedBox(height: 15),
                            actions,
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDialogActions(
    BuildContext context,
    Map<String, String> project,
    bool desktop,
  ) {
    final closeButton = TextButton(
      onPressed: () => Navigator.pop(context),
      style: TextButton.styleFrom(
        side: BorderSide(color: Theme.of(context).colorScheme.outline),
        minimumSize: desktop ? null : const Size(0, 48),
        padding: desktop
            ? null
            : const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        textStyle: desktop ? null : const TextStyle(fontSize: 14),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: desktop ? 48 : 0),
        child: Text(AppLocalizations.of(context)!.close),
      ),
    );
    final githubButton = FilledButton.icon(
      onPressed: () => UrlLauncherService.launchURL(project['github']!),
      icon: FaIcon(FontAwesomeIcons.github, size: desktop ? null : 18),
      label: desktop
          ? Text(AppLocalizations.of(context)!.view_on_github)
          : FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(AppLocalizations.of(context)!.view_on_github),
            ),
      style: desktop
          ? null
          : FilledButton.styleFrom(
              minimumSize: const Size(0, 48),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
              textStyle: const TextStyle(fontSize: 14),
            ),
    );

    if (desktop) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          closeButton,
          const SizedBox(width: 8),
          githubButton,
        ],
      );
    }

    return Row(
      children: [
        Expanded(child: closeButton),
        const SizedBox(width: 12),
        Expanded(child: githubButton),
      ],
    );
  }

  Widget _getProjectWidget(
    String title, {
    required bool isDesktop,
    required double mobileHeight,
  }) {
    final height = isDesktop ? 500.0 : mobileHeight;
    switch (title) {
      case 'Gorilla Workout Mobile App':
        return Gorilla(height: height);
      case 'Adam the Humanoid':
        return Adam(height: height);
      case 'Johnny the Humanoid':
        return Johnny(height: height);
      case 'Pencil 2D Platformer Game':
        return Pencil(height: isDesktop ? 900 : mobileHeight);
      case 'Advanced Acoustic Speaker Systems':
        return Speaker(height: isDesktop ? 900 : mobileHeight);
      default:
        return Gorilla(height: height);
    }
  }
}
