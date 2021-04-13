import 'package:flutter/material.dart';
import 'screens/details/detail.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'homemade',
      debugShowCheckedModeBanner: false,
      home: Detail(),
    );
  }
}
