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
          Text('Data', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          competenceGrid([
            'assets/img/Mysql.png', 
            'assets/img/MongoDB.jpg',
            // Ajouter les autres compétences ici
          ]),

          const SizedBox(height: 20),
          Text('Web', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          competenceGrid([
            'assets/img/ReactJS.png',
            'assets/img/VueJS.png',
            'assets/img/CSS.png',
            'assets/img/HTML.png',
            'assets/img/SASS.png',
            'assets/img/Javascript.png',
            'assets/img/PHP.png',
            'assets/img/Wordpress.png',
            // Ajouter les autres compétences ici
          ]),

          const SizedBox(height: 20),
          Text('Mobile App/Jeux', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          competenceGrid([
            'assets/img/Flutter.png',
            'assets/img/ReactNative.png',
            // Ajouter les autres compétences ici
          ]),
        ],
      ),
    );
  }

  Widget competenceGrid(List<String> competences) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: competences.length,
      itemBuilder: (context, index) {
        return competenceItem(competences[index]);
      },
    );
  }

  Widget competenceItem(String logo) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          logo,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
