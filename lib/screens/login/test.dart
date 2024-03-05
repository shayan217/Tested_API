import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatelessWidget {
 Future<void> fetchData() async {
  final response = await http.get(Uri.parse("https://falcon.onelogitech.com/api/riderapp_login"));

  if (response.statusCode == 200) {
    // Print headers
    print("Headers:");
    response.headers.forEach((key, value) {
      print("$key: $value");
    });
  } else {
    // If the server did not return a 200 OK response, throw an exception.
    throw Exception('Failed to load data: ${response.statusCode}');
  }
}





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Data Viewer'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: fetchData,
            child: Text('Fetch Data'),
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(ApiDataViewer());
// }
