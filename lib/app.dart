import 'package:flutter/material.dart';
import 'screens/details/detail.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yumify',
      debugShowCheckedModeBanner: false,
      home: Detail(),
    );
  }
}
