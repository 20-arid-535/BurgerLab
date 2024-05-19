import 'package:cookies_ui/pages/home.dart';
import 'package:cookies_ui/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: ThemeData(brightness: Brightness.dark,
      primarySwatch: Colors.orange),
    );
}
}