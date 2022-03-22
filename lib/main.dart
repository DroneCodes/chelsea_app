import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:chelsea_app/navigation_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

final List<String> imgList = [
      "https://images.unsplash.com/photo-1614632537190-23e4146777db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2hhbXBpb25zJTIwbGVhZ3VlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60"
      "https://images.unsplash.com/photo-1606470542032-a9caa0be6e97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c29jY2VyJTIwY29hY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60"
      "assets/images/azpili.jpg"
      "assets/images/coaches.jpg"
];

final List<String> news = [
  'Date confirmed for Real Madrid Ties'
      'Three players uncertain for tie against Boro'
      'Azpilicueta pleased with his contributions to the team'
      'Tuchel reacts to the draw'
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: const Text("Chelsea App"),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Latest Chelsea News",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      ))
                  .toList(), 
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


  
  
/* Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: const Text("Chelsea App"),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: CarouselSlider.builder(
            itemCount: , itemBuilder: itemBuilder, options: options),
      ),
    ); 
 */