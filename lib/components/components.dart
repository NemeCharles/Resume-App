import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key, required this.text, required this.socialIcon, this.function
  }) : super(key: key);

  final String text;
  final IconData socialIcon;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Icon(
                socialIcon,
                size: 20,
              ),
              const SizedBox(width: 18,),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PortraitMode extends StatelessWidget {
  const PortraitMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 220,
              width: 190,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/profile.jpg')
                )
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            'Okpala Chineme',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 5,),
          const Text(
            'Flutter Developer',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(height: 13,),
          const Text(
            "I'm Chineme. I'm a Mobile Developer who creates and manages highly responsive and "
                "scalable multi-platform applications for IOS and Android devices using Google's flutter "
                "development framework. I am a passionate team player always willing to learn more and will give a 100% "
                "to ensure that the project is carried out successfully and with responsive codes.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey
            ),
          ),
          const SizedBox(height: 24,),
          SocialLinks(
            socialIcon: FontAwesomeIcons.phone,
            text: '+234 810 286 3233',
            function: () async {
              final Uri url = Uri.parse('tel:+2348102863233');
              _launchUrl(url);
            },
          ),
          SocialLinks(
            socialIcon: Icons.mail,
            text: 'okpalachord@gmail.com',
            function: () async {
              String? encodeQueryParameters(Map<String, String> params) {
                return params.entries
                    .map((MapEntry<String, String> e) =>
                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                    .join('&');
              }
              final Uri url = Uri(
                  scheme: 'mailto',
                  path: 'okpalachord@gmail.com',
                  query: encodeQueryParameters(<String, String>{
                    'subject': 'Hello Chineme'
                  })
              );
              launchUrl(url);
            },
          ),
          SocialLinks(
            socialIcon: FontAwesomeIcons.github,
            text: 'github.com/NemeCharles',
            function: () async {
              final Uri url = Uri.parse('https://github.com/NemeCharles');
              _launchUrl(url);
            },
          ),
          SocialLinks(
            socialIcon: FontAwesomeIcons.twitter,
            text: '@DrickoBoy',
            function: () async {
              final Uri  url = Uri.parse('https://twitter.com/DrickoBoy');
              _launchUrl(url);
            },
          )
        ],
      ),
    );
  }
  Future _launchUrl(Uri url) async {
    if(await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {throw 'unable to launch $url';}
  }
}

class LandScapeMode extends StatelessWidget {
  const LandScapeMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 220,
              width: 190,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/profile.jpg')
                  )
              ),
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  const Text(
                    'Okpala Chineme',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 13,),
                  const Text(
                    "I'm Chineme. I'm a Mobile Developer who creates and manages highly responsive and "
                        "scalable multi-platform applications for IOS and Android devices using Google's flutter "
                        "development framework.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),
                  ),
                  const SizedBox(height: 24,),
                  SocialLinks(
                    socialIcon: FontAwesomeIcons.phone,
                    text: '+234 810 286 3233',
                    function: () async {
                      final Uri url = Uri.parse('tel:+2348102863233');
                      _launchUrl(url);
                    },
                  ),
                  SocialLinks(
                    socialIcon: Icons.mail,
                    text: 'okpalachord@gmail.com',
                    function: () async {
                      String? encodeQueryParameters(Map<String, String> params) {
                        return params.entries
                            .map((MapEntry<String, String> e) =>
                        '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                            .join('&');
                      }
                      final Uri url = Uri(
                          scheme: 'mailto',
                          path: 'okpalachord@gmail.com',
                          query: encodeQueryParameters(<String, String>{
                            'subject': 'Hello Chineme'
                          })
                      );
                      launchUrl(url);
                    },
                  ),
                  SocialLinks(
                    socialIcon: FontAwesomeIcons.github,
                    text: 'github.com/NemeCharles',
                    function: () async {
                      final Uri url = Uri.parse('https://github.com/NemeCharles');
                      _launchUrl(url);
                    },
                  ),
                  SocialLinks(
                    socialIcon: FontAwesomeIcons.twitter,
                    text: '@DrickoBoy',
                    function: () async {
                      final Uri  url = Uri.parse('https://twitter.com/DrickoBoy');
                      _launchUrl(url);
                    },
                  )
                ],
              ),
            ),
          )
        ]
    );
  }
  Future _launchUrl(Uri url) async {
    if(await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {throw 'unable to launch $url';}
  }
}
