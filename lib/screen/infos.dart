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
          Text('Séjour à l\'étranger', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 10),
          Image.asset('assets/img/linkedin.png'),
          const SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore nihil odio iste nisi harum excepturi eaque, id dignissimos inventore quod.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 20),
          Text('Sports pratiqués', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 10),
          Image.asset('assets/img/linkedin.png'),
          const SizedBox(height: 10),
          Text(
            'Repellat accusamus consequuntur tempore cum, totam obcaecati repudiandae eius saepe fuga id quam facere a at!',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
