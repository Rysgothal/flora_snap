import 'dart:io';

import 'package:flora_snap/helpers/camera_acess.dart';
import 'package:flora_snap/helpers/send_image.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? _image;

  Future<void> _takePicture() async {
    final image = await takePicture();
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
      // sendImage(image as File);
    }
  }

  Future<void> _takeImageGallery() async {
    final image = await takeImageGallery();
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

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
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                color: Colors.grey[300],
                width: 300,
                height: 300,
                child: _image == null
                    ? const Center(
                        child: Icon(Icons.image_outlined, size: 100, color: Colors.grey),
                      )
                    : Image.file(_image!, fit: BoxFit.cover),
              ),
            ),
          ),
            if (_image != null)
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () async {
                    final body = await sendImage(_image!);
                    print(body);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Resultado'),
                      content: Text('Classe: ${body['class']}\nConfiança: ${body['confidence']}'),
                      actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                        Navigator.of(context).pop();
                        },
                      ),
                      ],
                    );
                    },
                  );
                  }, 
                  child: const Text(
                    'Enviar', 
                    style: TextStyle(
                      color: Colors.black),
                      ),
                    ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                      _image = null;
                      }
                    );
                  },
                  child: const Text(
                    'Apagar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),],
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _takePicture,
                  child: const Text(
                    'Câmera',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _takeImageGallery,
                  child: const Text(
                    'Galeria',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10), 
        ],
      ),
    );
  }
}