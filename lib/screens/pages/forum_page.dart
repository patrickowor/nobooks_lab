import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({Key? key}) : super(key: key);
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myAppBarColor,
      appBar: AppBar(
        backgroundColor: myAppBarColor,
        leading: const Text('Hi, Boluwatife', style: TextStyle(color: Colors.blue)),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.limeAccent,
        ),
      ),
    );
  }
}
