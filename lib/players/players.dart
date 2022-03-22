import 'package:chelsea_app/players/apiplayes.dart';
import 'package:chelsea_app/players/player.dart';
import 'package:chelsea_app/players/playersapi.dart';
import 'package:flutter/material.dart';

class Players extends StatefulWidget {
  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  late List<Player> _players;
  bool _isloading = true;

  @override
  void initState() {
    super.initState();

    getPlayer();
  }

  Future<void> getPlayer() async {
    _players = await PlayerApi.getPlayer();
    setState(() {
      _isloading = false;
    });
    print(_players);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Players"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: _isloading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _players.length,
                itemBuilder: (context, index) {
                  return PlayersApi(
                      imageUrl: _players[index].images,
                      name: _players[index].name,
                      age: _players[index].age.toString(),
                      number: _players[index].number.toString());
                }));
  }
}
