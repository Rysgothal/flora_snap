import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> sendImage(File imageFile) async {
  final url = Uri.parse('http://127.0.0.1:5000/classify');
  final request = http.MultipartRequest('POST', url)
    ..files.add(await http.MultipartFile.fromPath('image', imageFile.path));

  final response = await request.send();

  if (response.statusCode == 200) {
    final responseBody = await response.stream.bytesToString();
    final jsonResponse = jsonDecode(responseBody);
    print('Response: $jsonResponse');
  } else {
    print('Failed to send image. Status code: ${response.statusCode}');
  }
}