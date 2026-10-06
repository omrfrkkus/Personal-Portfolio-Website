import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/project_gallery.dart';

class Gorilla extends StatelessWidget {
  const Gorilla({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HorizontalProjectGallery(
          height: height,
          itemCount: 5,
          itemBuilder: (_, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset('images/pixel$index.png'),
            );
          },
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () => _launchURL(
              'https://play.google.com/store/apps/details?id=com.koznotech.gorillaworkout&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'),
          child: Image.asset('images/play.png'),
        )
      ],
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
