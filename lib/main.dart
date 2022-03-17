import 'package:chelsea_app/navigation_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: const Text("Chelsea App"),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      
    );
  }
}
