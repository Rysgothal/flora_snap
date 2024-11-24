import 'package:flora_snap/model/navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var currentPageIndex = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 98, 165, 100),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera , size: 30),
                  Text('  '),
                  Text('Flora Snap', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ])
            ),
          ),
        ),
        body: Scaffold(
          bottomNavigationBar: NavigationBar(
            destinations: NavigationBarOptions.getDestinations(),
            selectedIndex: currentPageIndex,
            onDestinationSelected: (index) => setState(() => currentPageIndex = index),
            ),
        ),
        ),
      );
  }