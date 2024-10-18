import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditPage extends StatelessWidget {
  const CreditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kredit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'API yang Digunakan:',
              style:
                  GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Aplikasi ini menggunakan API dari:',
              style: GoogleFonts.inter(fontSize: 16),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  '1. Jikan API',
                  style: GoogleFonts.inter(fontSize: 14),
                ),
                TextButton(
                  onPressed: () async {
                    Uri url = Uri.parse('https://jikan.moe/');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(
                        url,
                        browserConfiguration:
                            BrowserConfiguration(showTitle: true),
                        mode: LaunchMode.externalApplication,
                        webOnlyWindowName: '_self',
                        webViewConfiguration: WebViewConfiguration(
                          enableJavaScript: true,
                        ),
                      );
                    } else {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: Text(
                    'https://jikan.moe/',
                    style: GoogleFonts.inter(fontSize: 14),
                  ),
                ),
              ],
            ),
            Text(
              'Digunakan untuk mengambil data anime dan manga.',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
