import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher extends StatefulWidget {
  

  @override
  _UrlLauncherState createState() => _UrlLauncherState();
}

const _url =
    'https://medium.com/codechai/how-to-launch-urls-in-flutter-66611ef141f8';
const _urlGoogle = 'https://www.youtube.com/';
const _urlLink =
    'https://stackoverflow.com/questions/56220691/how-do-i-open-an-external-url-in-flutter-web-in-new-tab-or-in-same-tab';

class _UrlLauncherState extends State<UrlLauncher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Url Launcher',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _launchURL,
                child: const Text("URL Launched"),
              ),
              ElevatedButton(
                onPressed: _launchGoogle,
                child: const Text("URL Launched"),
              ),
              ElevatedButton(
                onPressed: _launchLink,
                child: const Text("URL Launched"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  void _launchGoogle() async => await canLaunch(_urlGoogle)
      ? await launch(_urlGoogle)
      : throw 'Could not launch $_urlGoogle';

  void _launchLink() async => await canLaunch(_urlLink)
      ? await launch(_urlLink)
      : throw 'Could not launch $_urlLink';
}
