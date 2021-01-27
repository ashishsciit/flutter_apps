import 'package:cricket_player/add_data_widget.dart';
import 'package:cricket_player/data_objects/player.dart';
import 'package:cricket_player/models/players.dart';
import 'package:cricket_player/players_list.dart';
import 'package:cricket_player/services/api_services.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ApiService api = ApiService();
  List<Players> playersList;

  @override
  Widget build(BuildContext context) {
    if (playersList == null) {
      playersList = <Players>[];
    }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
            child: FutureBuilder(
          future: loadList(),
          builder: (context, snapshot) {
            return playersList.length > 0
                ? PlayersList(players: playersList)
                : Center(child: CircularProgressIndicator());
          },
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddScreen(context);
          print('navigate to add');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future loadList() {
    Future<List<Players>> futurePlayers = api.getPlayers();
    futurePlayers.then((playersList) {
      // print('date recieved');
      setState(() {
        this.playersList = playersList;
      });
    });
    return futurePlayers;
  }

  _navigateToAddScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddDataWidget()),
    );
  }
}
