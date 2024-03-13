import 'package:flutter/material.dart';
import 'package:football_app_task/views/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const SoccerApp());
}

class SoccerApp extends StatelessWidget {
  const SoccerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const  Text(
            'SoccerApp',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: const HomePage(),
      ),
    );
  }
}
