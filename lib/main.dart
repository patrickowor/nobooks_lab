import 'package:flutter/material.dart';

import 'package:nobooks/screens/navigation.dart';

import '../utilities/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: mBackgroundColor,
        appBarTheme: const AppBarTheme(
          color: myAppBarColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Navigation(),
    );
  }
}
