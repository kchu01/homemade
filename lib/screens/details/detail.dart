import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("/images/pho.jpg"),
            TextSection(Colors.red),
            TextSection(Colors.green),
            TextSection(Colors.blue),
          ]),
    );
  }
}
