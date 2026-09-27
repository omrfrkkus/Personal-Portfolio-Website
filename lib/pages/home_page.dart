import 'dart:math' as math;

import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omerfarukkus_flutter_website/services/locale_service.dart';
import 'package:omerfarukkus_flutter_website/titles/contact.dart';
import 'package:omerfarukkus_flutter_website/titles/projects.dart';
import 'package:omerfarukkus_flutter_website/titles/sports.dart';
import 'package:url_launcher/url_launcher.dart';
import '../l10n/app_localizations.dart';
import 'package:provider/provider.dart';

const _languageOptions = [
  (code: 'ar', countryCode: 'SA', name: 'العربية'),
  (code: 'bn', countryCode: 'BD', name: 'বাংলা'),
  (code: 'de', countryCode: 'DE', name: 'Deutsch'),
  (code: 'en', countryCode: 'GB', name: 'English'),
  (code: 'es', countryCode: 'ES', name: 'Español'),
  (code: 'fr', countryCode: 'FR', name: 'Français'),
  (code: 'he', countryCode: 'IL', name: 'עברית'),
  (code: 'hi', countryCode: 'IN', name: 'हिन्दी'),
  (code: 'id', countryCode: 'ID', name: 'Bahasa Indonesia'),
  (code: 'it', countryCode: 'IT', name: 'Italiano'),
  (code: 'ja', countryCode: 'JP', name: '日本語'),
  (code: 'ko', countryCode: 'KR', name: '한국어'),
  (code: 'nl', countryCode: 'NL', name: 'Nederlands'),
  (code: 'pl', countryCode: 'PL', name: 'Polski'),
  (code: 'pt', countryCode: 'PT', name: 'Português'),
  (code: 'ro', countryCode: 'RO', name: 'Română'),
  (code: 'ru', countryCode: 'RU', name: 'Русский'),
  (code: 'th', countryCode: 'TH', name: 'ไทย'),
  (code: 'tl', countryCode: 'PH', name: 'Tagalog'),
  (code: 'tr', countryCode: 'TR', name: 'Türkçe'),
  (code: 'uk', countryCode: 'UA', name: 'Українська'),
  (code: 'vi', countryCode: 'VN', name: 'Tiếng Việt'),
  (code: 'zh', countryCode: 'CN', name: '中文'),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey sportsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  Widget _languageDropdown(LocaleService localeService) {
    return DropdownButton<String>(
      value: localeService.currentLocale.languageCode,
      underline: const SizedBox(),
      focusColor: Colors.transparent,
      onChanged: (value) {
        if (value != null) {
          localeService.changeLocale(value);
        }
      },
      items: _languageOptions
          .map(
            (language) => DropdownMenuItem<String>(
              value: language.code,
              child: Row(
                children: [
                  CountryFlag.fromCountryCode(
                    language.countryCode,
                    width: 24,
                    height: 16,
                    shape: const RoundedRectangle(3),
                  ),
                  const SizedBox(width: 6),
                  Text(language.name),
                ],
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localeService = Provider.of<LocaleService>(context);
    final size = MediaQuery.sizeOf(context);
    final isDesktop = size.width >= 1000;
    final contentWidth =
        isDesktop ? math.min(size.width, size.height * 4 / 3) : size.width;
    final greeting = _sentenceCase(AppLocalizations.of(context)!.hey);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: isDesktop
            ? Center(
                child: SizedBox(
                  width: contentWidth,
                  child: Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () => scrollToSection(aboutKey),
                        child: const Text('Ömer Faruk Kuş'),
                      ),
                      const Spacer(),
                      _languageDropdown(localeService),
                      TextButton(
                        onPressed: () => scrollToSection(aboutKey),
                        child: Text(AppLocalizations.of(context)!.about),
                      ),
                      TextButton(
                        onPressed: () => scrollToSection(projectsKey),
                        child: Text(AppLocalizations.of(context)!.projects),
                      ),
                      TextButton(
                        onPressed: () => scrollToSection(sportsKey),
                        child: Text(AppLocalizations.of(context)!.sports),
                      ),
                      TextButton(
                        onPressed: () => scrollToSection(contactKey),
                        child: Text(AppLocalizations.of(context)!.contact),
                      ),
                    ],
                  ),
                ),
              )
            : null,
        actions: isDesktop ? const [] : [_languageDropdown(localeService)],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: contentWidth),
          child: CustomScrollView(
            primary: true,
            slivers: [
              SliverToBoxAdapter(
                key: aboutKey,
                child: SizedBox(
                  height: isDesktop
                      ? 800
                      : (size.height * 0.75).clamp(540.0, 760.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 8,
                          children: [
                            Text(
                              greeting,
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            SelectableText(
                              'Ömer Faruk Kuş',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            TextButton(
                              onPressed: () {
                                scrollToSection(projectsKey);
                              },
                              child:
                                  Text(AppLocalizations.of(context)!.projects),
                            ),
                            TextButton.icon(
                              onPressed: () {
                                _launchURL(
                                    'https://www.omerfarukkus.com.tr/omer_faruk_kus_cv.pdf');
                              },
                              label: Text(AppLocalizations.of(context)!.resume),
                              icon: const Icon(Icons.file_download_outlined),
                            )
                          ],
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 4,
                          runSpacing: 4,
                          children: [
                            IconButton(
                                iconSize: 24,
                                padding: const EdgeInsets.all(10),
                                constraints: const BoxConstraints(
                                  minWidth: 52,
                                  minHeight: 52,
                                ),
                                onPressed: () {
                                  _launchURL('https://github.com/omrfrkkus');
                                },
                                icon: const FaIcon(FontAwesomeIcons.github)),
                            IconButton(
                                iconSize: 24,
                                padding: const EdgeInsets.all(10),
                                constraints: const BoxConstraints(
                                  minWidth: 52,
                                  minHeight: 52,
                                ),
                                onPressed: () {
                                  _launchURL(
                                      'https://www.linkedin.com/in/omrfrkkus');
                                },
                                icon: const FaIcon(FontAwesomeIcons.linkedin)),
                            IconButton(
                                iconSize: 24,
                                padding: const EdgeInsets.all(10),
                                constraints: const BoxConstraints(
                                  minWidth: 52,
                                  minHeight: 52,
                                ),
                                onPressed: () {
                                  _launchURL(
                                      'mailto:omerfaruk.kus@outlook.com');
                                },
                                icon: const FaIcon(FontAwesomeIcons.envelope)),
                            IconButton(
                                iconSize: 24,
                                padding: const EdgeInsets.all(10),
                                constraints: const BoxConstraints(
                                  minWidth: 52,
                                  minHeight: 52,
                                ),
                                onPressed: () {
                                  _launchURL(
                                      'https://www.instagram.com/omrfrkkus');
                                },
                                icon: const FaIcon(FontAwesomeIcons.instagram)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    isDesktop ? 48 : 24,
                    isDesktop ? 40 : 28,
                    isDesktop ? 48 : 24,
                    isDesktop ? 64 : 44,
                  ),
                  child: Column(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.about_me,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 16),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
                        thickness: 1,
                        indent: isDesktop ? 16 : 8,
                        endIndent: isDesktop ? 16 : 8,
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 900),
                          child: SelectableText(
                            AppLocalizations.of(context)!.about_me_text,
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  key: projectsKey, child: Projects(isDesktop: isDesktop)),
              SliverToBoxAdapter(
                  key: sportsKey, child: Sports(isDesktop: isDesktop)),
              SliverToBoxAdapter(
                  key: contactKey, child: Contact(isDesktop: isDesktop)),
              SliverToBoxAdapter(
                child: SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Center(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          Text(
                            '${DateTime.now().year} Ömer Faruk Kuş. ${AppLocalizations.of(context)!.all_rights}',
                            textAlign: TextAlign.center,
                          ),
                          TextButton(
                              onPressed: () {
                                _launchURL(
                                    'https://github.com/omrfrkkus/Personal-Portfolio-Website');
                              },
                              child: const Text('Source Code'))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String _sentenceCase(String value) {
  final lowercase = value.trim().toLowerCase();
  if (lowercase.isEmpty) {
    return lowercase;
  }

  final firstLetter = lowercase[0].toUpperCase();
  var result = '$firstLetter${lowercase.substring(1)}';
  result = result.replaceAll("i'm", "I'm").replaceAll('i am', 'I am');
  return result;
}

void _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
