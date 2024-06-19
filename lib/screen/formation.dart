import 'package:flutter/material.dart';

class FormationScreen extends StatelessWidget {
  const FormationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          formationItem('assets/img/LOGO_MDS.jpg', 'My Digital School', 'Bachelor 3 - Conception objet, UML'),
          formationItem('assets/img/linkedin.png', 'École Supérieure du Digital', 'Bachelor 1 & 2 - Développement Web'),
          formationItem('assets/img/linkedin.png', 'Sup de Web', 'Master 1 & 2 - Flutter'),
          formationItem('assets/img/linkedin.png', 'Digital Campus Paris', 'FC - Data Management'),
          formationItem('assets/img/linkedin.png', 'Udemy', 'SQL / MySQL en profondeur'),
        ],
      ),
    );
  }

  ListTile formationItem(String img, String ecole, String description) {
    return ListTile(
      leading: Image.asset(img, height: 40),
      title: Text(ecole),
      subtitle: Text(description),
    );
  }
}
