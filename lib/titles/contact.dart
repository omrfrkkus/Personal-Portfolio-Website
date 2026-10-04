import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omerfarukkus_flutter_website/services/launch_url_service.dart';

class Contact extends StatelessWidget {
  const Contact({super.key, required this.isDesktop});
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          AppLocalizations.of(context)!.contact,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        isDesktop
            ? Divider(
                color: Theme.of(context).colorScheme.primary,
                thickness: 1,
                indent: 64,
                endIndent: 64,
              )
            : Divider(
                color: Theme.of(context).colorScheme.primary,
                thickness: 1,
                indent: 32,
                endIndent: 32,
              ),
        isDesktop
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        UrlLauncherService.launchURL(
                            'mailto:omerfaruk.kus@outlook.com');
                      },
                      icon: const Icon(Icons.email),
                      label: const Text('Email'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 24.0, horizontal: 32.0),
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 18),
                        shape: const StadiumBorder(),
                      ),
                    ),
                    const SizedBox(width: 32),
                    ElevatedButton.icon(
                      onPressed: () {
                        UrlLauncherService.launchURL(
                            'https://www.linkedin.com/in/omrfrkkus');
                      },
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      label: const Text('LinkedIn'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 24.0, horizontal: 32.0),
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 18),
                        shape: const StadiumBorder(),
                      ),
                    ),
                    const SizedBox(width: 32),
                    ElevatedButton.icon(
                      onPressed: () {
                        UrlLauncherService.launchURL(
                            'https://github.com/omrfrkkus');
                      },
                      icon: const FaIcon(FontAwesomeIcons.github),
                      label: const Text('GitHub'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 24.0, horizontal: 32.0),
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 18),
                        shape: const StadiumBorder(),
                      ),
                    ),
                    const SizedBox(width: 32),
                    ElevatedButton.icon(
                      onPressed: () {
                        UrlLauncherService.launchURL(
                            'https://www.instagram.com/omrfrkkus');
                      },
                      icon: const FaIcon(FontAwesomeIcons.instagram),
                      label: const Text('Instagram'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 24.0, horizontal: 32.0),
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 18),
                        shape: const StadiumBorder(),
                      ),
                    ),
                  ],
                ),
              )
            : ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(32.0),
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      UrlLauncherService.launchURL(
                          'mailto:omerfaruk.kus@outlook.com');
                    },
                    icon: const Icon(Icons.email, size: 20),
                    label: const Text('Email'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(48),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 20),
                      shape: const StadiumBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      UrlLauncherService.launchURL(
                          'https://www.linkedin.com/in/omrfrkkus');
                    },
                    icon: const FaIcon(FontAwesomeIcons.linkedin, size: 20),
                    label: const Text('LinkedIn'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(48),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 20),
                      shape: const StadiumBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      UrlLauncherService.launchURL(
                          'https://github.com/omrfrkkus');
                    },
                    icon: const FaIcon(FontAwesomeIcons.github, size: 20),
                    label: const Text('GitHub'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(48),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 20),
                      shape: const StadiumBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      UrlLauncherService.launchURL(
                          'https://www.instagram.com/omrfrkkus');
                    },
                    icon: const FaIcon(FontAwesomeIcons.instagram, size: 20),
                    label: const Text('Instagram'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(48),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 20),
                      shape: const StadiumBorder(),
                    ),
                  ),
                ],
              )
      ],
    );
  }
}
