import 'package:chelsea_app/home.dart';
import 'package:chelsea_app/main.dart';
import 'package:chelsea_app/players/players.dart';
import 'package:chelsea_app/players/playersapi.dart';
import 'package:flutter/material.dart';

import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue[400],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                name: "Home",
                icon: Icons.home,
                onPress: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: "Players",
                icon: Icons.people,
                onPress: () => onItemPressed(context, index: 1),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: "Trophies",
                icon: Icons.emoji_events,
                onPress: () => onItemPressed(context, index: 2),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: "Staff",
                icon: Icons.people,
                onPress: () => onItemPressed(context, index: 3),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: "Stadium",
                icon: Icons.stadium,
                onPress: () => onItemPressed(context, index: 4),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: "Developer Info",
                icon: Icons.person,
                onPress: () => onItemPressed(context, index: 5),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Players()));
        break;
      default:
        Navigator.pop(context);
        break;
    }
  }

  Widget headerWidget() {
    return Container(
      color: Colors.blue[400],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 140,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"))),
          ),
          // ignore: prefer_const_constructors
          Text(
            "Chelsea App",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ],
      ),
    );
  }
}
