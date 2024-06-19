import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          experienceItem('EPDM France', 'Webmaster Wordpress (2023-2024)', 'assets/img/epdm.png', 'Création et gestion de 2 site e-commerce sous WordPress et gestion d’un site vitrine Wordpress'),
          experienceItem('CHEZ ERWAN', 'Développeuse WordPress (2022-2023)', 'assets/img/chezerwan.png', 'Durant mon alternance en tant que développeuse WordPress, j\'ai eu l\'opportunité de concevoir et mettre en place un site e-commerce de A à Z en utilisant WordPress.'),
          experienceItem('QUAESTYO', 'Assistante du directeur de production, Full-Stack (2022)', 'assets/img/quaestyo.jpg', 'Responsable de l\'édition de photos pour divers projets et jeux. Modification d\'un site web sous WordPress en utilisant Elementor pour renforcer la présence en ligne de l\'entreprise.'),
          experienceItem('Graphiste', 'Studio Henry Ely Aix (2021)', 'assets/img/ceppia.jpg', 'En collaboration avec un autre stagiaire, j\'ai contribué activement à la création d\'une identité visuelle distinctive pour l\'association CEPPIA. Ce travail a impliqué la conception d\'une charte graphique ainsi que la création d\'un logo.'),
        
        ],
      ),
    );
  }
Widget experienceItem(String company, String position, String logo, String description) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(logo, height: 60),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                company,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                position,
                style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 5),
              Text(description),
            ],
          ),
        ),
      ],
    ),
  );
}

}
