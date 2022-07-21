import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class ArenaPage extends StatefulWidget {
  const ArenaPage({Key? key}) : super(key: key);
  @override
  _ArenaPageState createState() => _ArenaPageState();
}

class _ArenaPageState extends State<ArenaPage> {
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
          color: Colors.indigo,
        ),
      ),
    );
  }
}
