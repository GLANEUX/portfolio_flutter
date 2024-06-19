// screen/formation.dart

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
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                formationList('assets/img/LOGO_MDS.jpg', 'My digital school PARIS', 'Bachelor année 3 Développeur Web \n dfg '),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile formationList(String img, String ecole, String description) {
    return ListTile(
      leading: Image.asset(img),
      title: Text(ecole),
      subtitle: Text(description),
    );
  }
}
