import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 24, 24, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to the official Page of Chelsea FC of England"),
            SizedBox(height: size.height * 0.03,),

            Image.asset("assets/images/logo.png",
            height: size.height * 0.6,)
          ],
        ),
      ),
    );
  }
}
