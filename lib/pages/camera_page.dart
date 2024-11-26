import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center( 
            child: Text(
                'Tire uma foto ou escolha uma da sua galeria',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.center,
              )
            ),
          Expanded(
            child: Center(
              child: Container(
                color: Colors.grey[300], // Placeholder for the image
                width: 300,
                height: 300,
                child: const Center(
                  child: Icon(Icons.image_outlined, size: 100, color: Colors.grey),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('Foi apertado para abrir a Câmera');
                  },
                  child: const Text(
                    'Câmera',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 20), // Espaço entre os botões
                ElevatedButton(
                  onPressed: () {
                    print('Foi apertado para abrir a Galeria');
                  },
                  child: const Text(
                    'Galeria',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20), // Espaço abaixo dos botões
        ],
      ),
    );
  }
}