import 'package:flutter/material.dart';

class NavigationBarOptions {
  static List<NavigationDestination> getDestinations() {
    return DestinationProvider().getDestinations();
  }
}

class DestinationProvider {
  List<NavigationDestination> getDestinations() {
    return const [
      NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      NavigationDestination(icon: Icon(Icons.camera), label: 'Câmera'),
      NavigationDestination(icon: Icon(Icons.person), label: 'Histótico'),
    ];
  }
}