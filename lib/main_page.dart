import 'package:flora_snap/principal_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flora Snap',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
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
                  ]
              )
            ),
          ),
          ),
        body: const PrincipalPage(), 
        ),
      );
  }
}