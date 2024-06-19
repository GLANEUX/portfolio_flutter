import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 195, 235, 196),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Text(
                  'Océane GLANEUX',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 30),
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/img/user.png'),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () async {
                        await _launchURL('https://github.com/GLANEUX/');
                      },
                      icon: Image.asset('assets/img/github.png', height: 30),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () async {
                        await _launchURL('https://linkedin.com/in/GLANEUX');
                      },
                      icon: Image.asset('assets/img/linkedin.png', height: 30),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Table(
              border: TableBorder.all(color: Colors.black),
              columnWidths: const {
                0: FractionColumnWidth(0.1),  // Colonne des icônes à 10% de la largeur
              },
              children: const [
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.email, size: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('o.glaneux@gmail.com'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.location_on, size: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Yvelines (78)'),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.link, size: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Bientôt'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Cette application est une présentation interactive de mon parcours professionnel, de mes compétences et de mes réalisations. Vous y trouverez des informations détaillées sur mon expérience, mes projets, ainsi que des moyens de me contacter directement. Explorez les différentes sections pour en savoir plus sur mon profil et n\'hésitez pas à cliquer sur les liens pour découvrir davantage.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $urlString');
    }
  }
}
