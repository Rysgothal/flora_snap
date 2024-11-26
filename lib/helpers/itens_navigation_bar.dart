import 'package:flutter/material.dart';

List<BottomNavigationBarItem> buildBottomNavigationBarItems() {
  return const [
    BottomNavigationBarItem(
      icon: Icon(Icons.camera_alt_outlined), 
      activeIcon: Icon(Icons.camera_alt), 
      label: 'Câmera'
    ),
    
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined), 
      activeIcon: Icon(Icons.home_sharp),
      label: 'Home'),

    BottomNavigationBarItem(
      icon: Icon(Icons.person_2_outlined),
      activeIcon: Icon(Icons.person_2),
      label: 'Histótico'),
  ];
}


