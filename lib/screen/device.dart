import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'profil.dart';
import 'experience.dart';
import 'formation.dart';
import 'competence.dart';
import 'infos.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;

  final List<Widget> _screenList = [
    const ProfilScreen(),
    const ExperienceScreen(),
    const FormationScreen(),
    const CompetenceScreen(),
    const InfosScreen(),
  ];

  final List<String> _screenLabels = [
    'Profil',
    'Expériences',
    'Formation',
    'Compétences',
    'Infos +',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentScreen != 0
          ? AppBar(
              title: Text(_screenLabels[_currentScreen]),
              actions: _links,
            )
          : null,
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 233, 206, 206),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 27, 11, 247),
        unselectedItemColor: const Color.fromARGB(255, 128, 167, 241),
        iconSize: 35,
        currentIndex: _currentScreen,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Expériences'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Formation'),
          BottomNavigationBarItem(icon: Icon(Icons.check), label: 'Compétences'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Infos'),
        ],
      ),
    );
  }

  List<Widget> get _links {
    return [
      IconButton(
        onPressed: () async {
          await _launchURL('https://linkedin.com/in/GLANEUX');
        },
        icon: Image.asset('assets/img/linkedin.png', height: 25),
      ),
      IconButton(
        onPressed: () async {
          await _launchURL('https://github.com/GLANEUX/');
        },
        icon: Image.asset('assets/img/github.png', height: 25),
      ),
    ];
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $urlString');
    }
  }
}
