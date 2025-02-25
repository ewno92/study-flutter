import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_flutter/theme/theme_provider.dart';

class TestPage2 extends StatefulWidget {
  const TestPage2({super.key});

  @override
  State<TestPage2> createState() => _TestPage2State();
}

class _TestPage2State extends State<TestPage2> {
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
      ],
    );
  }
}
