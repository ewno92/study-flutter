import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_flutter/pages/intro_page.dart';
import 'package:study_flutter/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
