import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> sendImage(File imageFile) async {
  final url = Uri.parse('http://54.232.68.80:5000/classify');
  final request = http.MultipartRequest('POST', url)
    ..files.add(await http.MultipartFile.fromPath('file', imageFile.path))
    ..headers['Content-Type'] = 'multipart/form-data';

  final response = await request.send();
  //final responseBody = response.body;
  final responseBody = await response.stream.bytesToString();

  if (response.statusCode == 200) {
    print(jsonDecode(responseBody));
    return jsonDecode(responseBody);
  } else {
    return {'error': 'Failed to send image'};
  }
}
