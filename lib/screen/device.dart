import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'profil.dart';
import 'experience.dart';
import 'formation.dart';
import 'competence.dart';
import 'infos.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({Key? key}) : super(key: key);

  @override
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
      appBar: _currentScreen != 0 ? AppBar(
        title: Text(_screenLabels[_currentScreen]),
        actions: _links,
      ) : null,
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
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
      _iconButton('https://linkedin.com/in/GLANEUX', 'assets/img/linkedin.png'),
      _iconButton('https://github.com/GLANEUX/', 'assets/img/github.png'),
    ];
  }

  IconButton _iconButton(String url, String img) {
    final Uri _url = Uri.parse(url);

    return IconButton(
      onPressed: () async {
        if (await canLaunchUrl(_url)) {
          await launchUrl(_url);
        } else {
          throw 'Impossible de lancer $url';
        }
      },
      icon: Image.asset(img, height: 25),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}