import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class urlLuncherPage extends StatelessWidget {
  const urlLuncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Url Luncher"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _launchUrl,
              child: Text("Open Chrome"),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                final Uri smsLaunchUri = Uri(
                  scheme: 'sms',
                  path: '0118 999 881 999 119 7253',
                  queryParameters: <String, String>{
                    'body': Uri.encodeComponent('Example Subject & Symbols are allowed!'),
                  },
                );
                launchUrl(smsLaunchUri);
              },
              child: Text("Send Message"),
            ),
            SizedBox(height: 8),
            ElevatedButton(
                onPressed: (){
                  final Uri telLaunchUri = Uri(
                      scheme: 'sms',
                      path: '1234567892',
                  );
                  // launchUrl(telLaunchUri);
                },
                child: Text("Call "),
            ),
            SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {
                  String? encodeQueryParameters(Map<String, String> params) {
                    return params.entries
                        .map((MapEntry<String, String> e) =>
                    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                        .join('&');
                  }
        // ···
                  final Uri emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: 'princy@gmail.com',
                    query: encodeQueryParameters(<String, String>{
                      'subject': 'Hello Princy !! I Am From in Surat ',
                    }),
                  );
                  launchUrl(emailLaunchUri);
                },
                child: Text("Send Email"),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _launchUrl() async {
    Uri uri = Uri.parse("https://pub.dev/packages/url_launcher");
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}


