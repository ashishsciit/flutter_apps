import 'package:cricket_player/edit_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:cricket_player/services/api_services.dart';
import 'package:cricket_player/models/players.dart';

class DetailWidget extends StatefulWidget {
  DetailWidget(this.players);

  final Players players;

  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  _DetailWidgetState();
  List<Players> playersList;
  Future<Players> player;

  final ApiService api = ApiService();

  String _update;

  @override
  void initState() {
    super.initState();
    player = api.getPlayerById(widget.players.id);
  }

  void updateDetailData(String update) {
    setState(() {
      _update = update;
      player = api.getPlayerById(widget.players.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Card(
              child: Container(
            padding: EdgeInsets.all(10.0),
            width: 440,
            child:
                _update != null ? _loadDataFromFuture() : _loadDataFromWidget(),
          )),
        ),
      ),
    );
  }

  _navigateToEditScreen(BuildContext context, Players players) async {
    // print(players);
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditDataWidget(players)),
    );
    print(result);
    updateDetailData(result);
    // if (result == "updated") {
    //   print('updated');
    //   _loadDataFromFuture(players);
    // } else {
    //   print('not updated');
    //   _loadDataFromWidget(players);
    // }
  }

  Widget _loadDataFromFuture() {
    setState(() {
      player = api.getPlayerById(widget.players.id);
    });
    return FutureBuilder<Players>(
        future: player,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Name:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(snapshot.data.name,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Jersey No:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(snapshot.data.jerseyNo,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Age:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(snapshot.data.age.toString(),
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Team:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(snapshot.data.team,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Roll:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(snapshot.data.roll,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Matches:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(snapshot.data.matches,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Runs:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(snapshot.data.runs,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Run Rate:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(snapshot.data.runRate,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Wickets:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(widget.players.wickets,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Economy Rate:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(widget.players.economyRate,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      Text('Catches:',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8))),
                      Text(widget.players.catches,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        splashColor: Colors.red,
                        onPressed: () {
                          _navigateToEditScreen(context, snapshot.data);
                          // print('edit player');
                        },
                        child:
                            Text('Edit', style: TextStyle(color: Colors.white)),
                        color: Colors.blue,
                      ),
                      RaisedButton(
                        splashColor: Colors.red,
                        onPressed: () {
                          _confirmDialog();
                        },
                        child: Text('Delete',
                            style: TextStyle(color: Colors.white)),
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('Data Cannot be loaded');
          }
          return CircularProgressIndicator();
        });
  }

  Widget _loadDataFromWidget() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Name:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.name,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Jersey No:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.jerseyNo,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Age:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.age.toString(),
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Team:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.team,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Roll:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.roll,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Matches:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.matches,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Runs:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.runs,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Run Rate:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.runRate,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Wickets:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.wickets,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Economy Rate:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.economyRate,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              Text('Catches:',
                  style: TextStyle(color: Colors.black.withOpacity(0.8))),
              Text(widget.players.catches,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            children: <Widget>[
              RaisedButton(
                splashColor: Colors.red,
                onPressed: () {
                  _navigateToEditScreen(context, widget.players);
                  // print('edit player');
                },
                child: Text('Edit', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
              ),
              RaisedButton(
                splashColor: Colors.red,
                onPressed: () {
                  _confirmDialog();
                },
                child: Text('Delete', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _confirmDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Warning!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure want delete this item?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes'),
              onPressed: () {
                print(widget.players.id);
                api.deletePlayer(widget.players.id);
                Navigator.popUntil(
                    context, ModalRoute.withName(Navigator.defaultRouteName));
              },
            ),
            FlatButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
