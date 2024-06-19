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
          formationItem('assets/img/mds.jpg', 'My Digital School', 'Bachelor 3 développeur web '),
          formationItem('assets/img/lpmiaw.jpg', 'Université Paris-Saclay', 'LP MIAW DAWI'),
          formationItem('assets/img/iut.jpg', 'IUT d\'Aix-Marseille', 'DUT MMI'),
          formationItem('assets/img/lyce.jpg', 'Lycée Hôtellier de Guyancourt', 'BAC STHR'),
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
