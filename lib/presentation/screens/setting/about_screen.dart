import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  void openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'No se puede abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ticketya',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text('Diseño & Equipo creativo'),
                ],
              ),
              const SizedBox(height: 16.0),
              Card(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.zero,
                child: Image.asset(
                  'assets/about/https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqdITKmviLse-2yKen5sKFwP9g0TxQ8AcjTkriIqRjJRYkpMl3F8hMWn9OUi5mSzESnVIgLFUSYQBdo2z-ajEV1hoL7smCOFr20438AyAkohh81tVzBaQRaNOS4H0R4CQAqPtDyugOgXrrWBKMHBv1dhcgMXK-nsvUaIbSgT1AgtZhF9Cz-E8nQS-mNUUi/s320/imagen_2024-12-08_200840597.png',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: EdgeInsets.zero,
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      'assets/vendors/https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjWg_NxgG89838kxoPR42W2rJ-fVssJOjEnvDn7P1w21u_Mn4-CutVdhzBcDvweH1n85iFy7yHPBh3E_9yAyF8hJsdGBD2SUNo-j_eO9NRi-HdRpm30nk5eWnB9d4NlwE5DohO8CnhwuWbhw971mtZNj432sXRYqMv4tmVzqxR4zzewiYDsgSB157VclcNt/s1600/WhatsApp%20Image%202024-12-08%20at%207.21.29%20PM.jpeg',
                      height: 60,
                    ),
                  ),
                  // const Card(
                  //   elevation: 0,
                  //   margin: EdgeInsets.zero,
                  //   child: FlutterLogo(size: 60),
                  // ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Version: 0.1',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    'Herramientas de Desarrollo de Software II',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8.0),
                  const Text('Aplicación base UI Kits - 2024'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          children: [
            const Text('Siguenos en:'),
            GestureDetector(
              onTap: () => openUrl(
                  'https://facebook.com/people/Narmeshit/61557356108015/'),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/social/facebook.png'),
              ),
            ),
            GestureDetector(
              onTap: () => openUrl('https://instagram.com/narmeshit'),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/social/instagram.png'),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/social/tiktok.png'),
              ),
            ),
            GestureDetector(
              onTap: () => openUrl('https://twitter.com/narmeshit'),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/social/twitter.png'),
              ),
            ),
            GestureDetector(
              onTap: () => openUrl('https://www.youtube.com/@narmeshit'),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/social/youtube.png'),
              ),
            ),
            GestureDetector(
              onTap: () => openUrl('https://dribbble.com/jdccoyllor'),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/social/dribbble.png'),
              ),
            ),
            GestureDetector(
              onTap: () => openUrl('https://github.com/narmeshit'),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/social/github.png'),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
