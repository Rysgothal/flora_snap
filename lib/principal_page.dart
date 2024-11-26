
import 'package:flora_snap/pages/camera_page.dart';
import 'package:flora_snap/helpers/itens_navigation_bar.dart';
import 'package:flora_snap/pages/home_page.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  int _currentIndex = 1;

  static const List<Widget> _pages = <Widget>[
    CameraPage(),
    HomePage(),
    Center(child: Text('Histórico Page')),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 98, 165, 100),
        selectedIconTheme: const IconThemeData(size: 30), 
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: buildBottomNavigationBarItems(),
      ),
    );
  }
}