import 'dart:convert';

import 'package:cricket_player/data_objects/player.dart';
import 'package:cricket_player/detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:cricket_player/models/players.dart';
import 'package:http/http.dart' as http;

class PlayersList extends StatelessWidget {
  final List<Players> players;
  PlayersList({Key key, this.players}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: players == null ? 0 : players.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: InkWell(
            onTap: () {
              // print(players[index]);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailWidget(players[index])),
              );
              print('Tile Tapped');
            },
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(players[index].name.toUpperCase()),
              trailing: Text(players[index].age.toString()),
              subtitle: Text(players[index].team.toUpperCase()),
            ),
          ));
        });
  }
}
