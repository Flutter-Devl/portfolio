import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: MyCustomColors.primary,
        splashColor: MyCustomColors.primary,
        highlightColor: MyCustomColors.primary,
      ),
      title: 'Flutter Developer Portfolio',
      home: const Portfolio(),
      debugShowCheckedModeBanner: false,
    );
  }
}
