import 'package:flutter/material.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Blog Posts', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          blogPost(
            context,
            'assets/img/free-nature-images.jpg',
           'Les merveilles de la nature',
            'Découvrez les secrets cachés des plus beaux paysages naturels et comment ils influencent notre bien-être.',
         ),
          const SizedBox(height: 20),
          blogPost(
            context,
            'assets/img/tech.jpg',
            'Innovation technologique en 2024',
            'Un aperçu des avancées technologiques les plus prometteuses de cette année et de leur impact sur notre quotidien.',
           ),
        ],
      ),
    );
  }

  Widget blogPost(BuildContext context, String imagePath, String title, String excerpt) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Image.asset(imagePath),
            Container(
              width: double.infinity,
              color: Colors.white.withOpacity(0.7),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          excerpt,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Divider(),
      ],
    );
  }
}
