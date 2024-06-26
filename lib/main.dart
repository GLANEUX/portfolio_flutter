import 'package:flutter/material.dart';
import 'screen/device.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        fontFamily: 'Rubik',
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        brightness: Brightness.light,
        
      ),

      home: const Scaffold(
        body: Center(
          child: DeviceScreen(),
          ),
      ),
    );
  }
}
