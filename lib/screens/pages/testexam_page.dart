import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
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
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
