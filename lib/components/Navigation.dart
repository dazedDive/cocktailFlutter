
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;
  var mainColor = const Color.fromARGB(255, 42, 149, 0);

  @override
  Widget build(BuildContext context) {
    return

    SafeArea(
        child: NavigationBar(
        height: 60,
        backgroundColor: mainColor,
        elevation: 10,
        onDestinationSelected: (int index){
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: 'Bienvenue'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Rechercher'),
          NavigationDestination(icon: Icon(Icons.send), label: 'Proposer')
        ],
      ),
    );
  }
}