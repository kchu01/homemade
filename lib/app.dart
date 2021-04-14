import 'package:flutter/material.dart';
import 'screens/details/detail.dart';
import 'style.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'homemade',
        debugShowCheckedModeBanner: false,
        home: Detail(),
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(headline6: AppBarTextStyle),
          ),
          textTheme: TextTheme(
            headline1: TitleTextStyle,
            bodyText1: BodyTextStyle,
          ),
        ));
  }
}
