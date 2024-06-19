import 'package:flutter/material.dart';

class CompetenceScreen extends StatelessWidget {
  const CompetenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Data', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 10),
          competenceItem('Pandas', 'assets/img/linkedin.png'),
          competenceItem('SQL', 'assets/img/linkedin.png'),
          // Ajouter les autres compétences ici
          
          const SizedBox(height: 20),
          Text('Web', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 10),
          competenceItem('React', 'assets/img/linkedin.png'),
          competenceItem('Angular', 'assets/img/linkedin.png'),
          // Ajouter les autres compétences ici
          
          const SizedBox(height: 20),
          Text('Mobile App/Jeux', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 10),
          competenceItem('Flutter', 'assets/img/linkedin.png'),
          competenceItem('Unity', 'assets/img/linkedin.png'),
          // Ajouter les autres compétences ici
        ],
      ),
    );
  }

  Widget competenceItem(String name, String logo) {
    return ListTile(
      leading: Image.asset(logo, height: 40),
      title: Text(name),
    );
  }
}
