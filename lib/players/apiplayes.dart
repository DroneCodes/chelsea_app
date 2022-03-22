import 'dart:convert';
import 'package:chelsea_app/players/player.dart';
import 'package:http/http.dart' as http;

class PlayerApi {
/*

var req = unirest("GET", "https://transfermarket.p.rapidapi.com/clubs/get-squad");

req.query({
	"id": "631"
});

req.headers({
	"x-rapidapi-host": "transfermarket.p.rapidapi.com",
	"x-rapidapi-key": "60a881a73amsh59d74193f12afb6p1a1d07jsn6e73291d50a1",
	"useQueryString": true
});


 */

  static Future<List<Player>> getPlayer() async {
  var uri = Uri.https('transfermarket.p.rapidapi.com',
      '/clubs/get-squad', {"id": "631"});

  final response = await http.get(uri, headers: {
      "x-rapidapi-host": "transfermarket.p.rapidapi.com",
      "x-rapidapi-key": "60a881a73amsh59d74193f12afb6p1a1d07jsn6e73291d50a1",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data["Squad"]) {
      _temp.add(i);
    }

    return Player.playersFromSnapshot(_temp);
  }
}

