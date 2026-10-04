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
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(isDesktop ? 32 : 16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isDesktop ? 2 : 1,
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
                childAspectRatio: isDesktop ? 1.0 : 0.75,
              ),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final project = projects[index];
                final isDynamicThumbnail =
                    project['key'] == 'pencil' || project['key'] == 'speaker';
                return Padding(
                  padding: EdgeInsets.all(isDesktop ? 24 : 8),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () => _showProjectDialog(context, project),
                      child: Padding(
                        padding: EdgeInsets.all(isDesktop ? 16 : 12),
                        child: Column(
                          mainAxisAlignment: isDynamicThumbnail
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: isDynamicThumbnail
                                    ? 0
                                    : (isDesktop ? 16 : 8)),
                            if (isDynamicThumbnail)
                              Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxHeight: isDesktop ? 300 : 280,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(24),
                                      child: Image.asset(
                                        project['image']!,
                                        width: double.infinity,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            else
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.asset(
                                    project['image']!,
                                    fit: isDesktop
                                        ? BoxFit.cover
                                        : BoxFit.contain,
                                  ),
                                ),
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
              },
            ),
          ),
        ),
      ],
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
                            padding: const EdgeInsets.only(bottom: 16),
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
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Text(AppLocalizations.of(context)!.close),
      ),
    );
    final githubButton = FilledButton.icon(
      onPressed: () => UrlLauncherService.launchURL(project['github']!),
      icon: const FaIcon(FontAwesomeIcons.github),
      label: Text(AppLocalizations.of(context)!.view_on_github),
    );

    return Flex(
      direction: desktop ? Axis.horizontal : Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (desktop) closeButton else githubButton,
        SizedBox(width: desktop ? 8 : 0, height: desktop ? 0 : 4),
        if (desktop) githubButton else closeButton,
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
