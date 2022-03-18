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
  'assets/images/draw.jpg'
      'assets/images/tuchel.jpg'
      'assets/images/azpili.jpg'
      'assets/images/coaches.jpg'
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
                        child: Image.asset(
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