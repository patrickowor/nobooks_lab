import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class RecordsPage extends StatefulWidget {
  const RecordsPage({Key? key}) : super(key: key);

  @override
  _RecordsPageState createState() => _RecordsPageState();
}

class _RecordsPageState extends State<RecordsPage> {
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
          color: Colors.orange,
        ),
      ),
    );
  }
}
