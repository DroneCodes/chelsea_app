import 'package:flutter/material.dart';

class Players extends StatefulWidget {
  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  String names = 'names';
  String imageUrl = 'imageUrl';
  String age = 'age';
  String number = 'number';

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Players"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Padding(padding: EdgeInsets.all(16.0),)
    );
  }
}
