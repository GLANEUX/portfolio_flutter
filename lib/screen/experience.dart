// screen/experience.dart

import 'package:flutter/material.dart';


class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('data')
        ],
      ),
    );
  }
}
