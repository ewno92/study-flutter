import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:study_flutter/components/my_button.dart';
import 'package:study_flutter/theme/theme_provider.dart';

class TestPage2 extends StatefulWidget {
  const TestPage2({super.key});

  @override
  State<TestPage2> createState() => _TestPage2State();
}

class _TestPage2State extends State<TestPage2> {
  Future<void> getTest() async {
    final url = Uri.parse(
      'http://localhost:3000/api/test/67bc14b100103d1475d4',
    );
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // Request successful
        var jsonData = jsonDecode(response.body);
        print(jsonData); // Print the received data
        // Process the data
      } else {
        // Request failed
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // Handle network errors or other exceptions
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "data",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("clicked");
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
          child: Center(child: Text("change theme color")),
        ),
        MyButton(onTap: getTest, child: Container(child: Text("getHttp"))),
      ],
    );
  }
}
