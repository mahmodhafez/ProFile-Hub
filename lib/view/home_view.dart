import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final Uri _url = Uri.parse('https://www.facebook.com/mahmohafez');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 122,
              backgroundImage: AssetImage('assets/image/profile_photo.jpg'),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Mahmoud Hafez',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'SixtyfourConvergence'),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'I have experience with using CTRL + Z and aam skilled at turning on PCs. I can also shut down a computer perfectly by pulling the plug if needed. If you need any help, feel free to reach out to me on \nWhatsapp: +201012737756',
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: _launchURLFB,
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  )),
              TextButton(
                  onPressed: _launchURLIG,
                  child: const Text(
                    'Instagram',
                    style: TextStyle(color: Colors.redAccent),
                  )),
              TextButton(
                  onPressed: _launchURLLinkedin,
                  child: const Text(
                    'Linked In',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w400),
                  ))
            ],
          )
        ],
      ),
    ));
  }

  void _launchURLFB() async {
    final Uri url = Uri.parse(
        'https://www.facebook.com/mahmohafez'); // Replace with your URL
    if (await canLaunch(url.toString())) {
      await launch(url.toString());
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURLIG() async {
    final Uri url = Uri.parse(
        'https://www.instagram.com/mahmod.exe/'); // Replace with your URL
    if (await canLaunch(url.toString())) {
      await launch(url.toString());
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURLLinkedin() async {
    final Uri url = Uri.parse(
        'https://www.linkedin.com/in/mahmodhafez/'); // Replace with your URL
    if (await canLaunch(url.toString())) {
      await launch(url.toString());
    } else {
      throw 'Could not launch $url';
    }
  }
}
