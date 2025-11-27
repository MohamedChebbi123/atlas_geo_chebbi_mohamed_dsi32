import 'package:flutter/material.dart';
import 'package:atlas_geochebbimohamed/pages/page_acceuil.dart';
void main() {
  runApp(const MyApp());
}

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:WelcomePage() ,
      );
    }
  }


