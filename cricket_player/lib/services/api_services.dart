import 'dart:convert';
import 'package:cricket_player/data_objects/player.dart';
import 'package:cricket_player/models/players.dart';
import 'package:http/http.dart';

class ApiService {
  final String apiUrl = "http://13.233.86.231/index.php/api/cricketer";

  Future<List<Players>> getPlayers() async {
    Response res = await get(apiUrl);
    // print('123!!!');
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Players> players =
          body.map((dynamic item) => Players.fromJson(item)).toList();
      // print('data found@@!');
      // print(players);
      return players;
    } else {
      throw "Failed to load players list";
    }
  }

  Future<Players> getPlayerById(String id) async {
    final response = await get('$apiUrl/$id');

    if (response.statusCode == 200) {
      return Players.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load a player');
    }
  }

  Future<Players> createPlayer(Players players) async {
    Map data = {
      'name': players.name,
      'jersey_no': players.jerseyNo,
      'age': players.age,
      'team': players.team,
      'roll': players.roll,
      'matches': players.matches,
      'runs': players.runs,
      'run_rate': players.runRate,
      'strike_rate': players.strikeRate,
      'fours': players.fours,
      'sixes': players.sixes,
      'fifties': players.fifties,
      'hundreds': players.hundreds,
      'wickets': players.wickets,
      'wickets_strike_rate': players.wicketsStrikeRate,
      'economy_rate': players.economyRate,
      'maidens': players.maidens,
      'five_wickets': players.fiveWickets,
      'catches': players.catches
    };

    final Response response = await post(
      apiUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
      return Players.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to post Players');
    }
  }

  Future<Players> updatePlayer(String id, Players players) async {
    Map data = {
      'name': players.name,
      'jersey_no': players.jerseyNo,
      'age': players.age,
      'team': players.team,
      'roll': players.roll,
      'matches': players.matches,
      'runs': players.runs,
      'run_rate': players.runRate,
      'strike_rate': players.strikeRate,
      'fours': players.fours,
      'sixes': players.sixes,
      'fifties': players.fifties,
      'hundreds': players.hundreds,
      'wickets': players.wickets,
      'wickets_strike_rate': players.wicketsStrikeRate,
      'economy_rate': players.economyRate,
      'maidens': players.maidens,
      'five_wickets': players.fiveWickets,
      'catches': players.catches
    };

    final Response response = await put(
      '$apiUrl/$id',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
      return Players.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to update a player');
    }
  }

  Future<void> deletePlayer(String id) async {
    final Response res = await delete('$apiUrl/$id');
    print(res.statusCode);

    if (res.statusCode == 200) {
      print("Player deleted");
    } else {
      throw "Failed to delete a player.";
    }
  }
}
