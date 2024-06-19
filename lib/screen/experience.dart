import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          experienceItem('Data.gouv.fr', 'Data analyst (2021-)', 'assets/img/linkedin.png', 'Description...'),
          experienceItem('Apple', 'Chief Full Stack Engineer (2020-27)', 'assets/img/linkedin.png', 'Description...'),
          experienceItem('Google (San Francisco)', 'Senior Software Engineer, Full-Stack (2018)', 'assets/img/linkedin.png', 'Description...'),
          experienceItem('Adidas', 'Unity Mobile Game Developer (2017)', 'assets/img/linkedin.png', 'Description...'),
          experienceItem('Mcdonald (Bruxelles)', 'Flutter project manager (2016)', 'assets/img/linkedin.png', 'Description...'),
        ],
      ),
    );
  }

  Widget experienceItem(String company, String position, String logo, String description) {
    return ListTile(
      leading: Image.asset(logo, height: 40),
      title: Text(company),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(position),
          const SizedBox(height: 5),
          Text(description),
        ],
      ),
    );
  }
}
