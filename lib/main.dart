import 'package:cocktail_app/components/Footer.dart';
import 'package:cocktail_app/components/Navigation.dart';
import 'package:cocktail_app/screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.lime,
      ),
      home: Scaffold(
        appBar:const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Navigation()),
      body:  const HomePage(),
      bottomNavigationBar: Container(
        height: 30,
        child: const Footer(),
      ),
      backgroundColor: Color.fromARGB(255, 108, 137, 94),),
    );
  }
}

