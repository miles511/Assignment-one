import 'package:flutter/material.dart';

import 'structure.dart';

void main() {
  runApp( MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: const Text('Transaction History')),
      ),
      body: Structure(),
    );
  }
}


