import 'package:flutter/material.dart';
import 'package:profile_app/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
