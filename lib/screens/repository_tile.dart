import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoryTile extends StatelessWidget {
  const RepositoryTile({
    super.key,
    required this.text,
    required this.link,
  });

  final String text;
  final String link;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'No se pudo abrir el enlace: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: GestureDetector(
        onTap: () => _launchUrl(link),
        child: IconButton(
            icon: SvgPicture.asset('assets/iconsgit2.svg',
                height: 50, width: 50),
            iconSize: 50,
            padding: const EdgeInsets.all(10),
            onPressed: () {
              launch(
                  "https://github.com");
            }),
      ),
    );
  }
}
