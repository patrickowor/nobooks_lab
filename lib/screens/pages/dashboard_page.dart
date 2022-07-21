import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
          color: mBackgroundColor,
        ),
      ),
    );
  }
}
