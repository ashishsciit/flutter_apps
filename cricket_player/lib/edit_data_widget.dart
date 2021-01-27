import 'package:cricket_player/models/players.dart';
import 'package:cricket_player/services/api_services.dart';
import 'package:flutter/material.dart';

class EditDataWidget extends StatefulWidget {
  EditDataWidget(this.players);

  final Players players;
  @override
  _EditDataWidgetState createState() => _EditDataWidgetState();
}

class _EditDataWidgetState extends State<EditDataWidget> {
  final ApiService api = ApiService();
  final _addFormKey = GlobalKey<FormState>();
  String id = '';
  final _nameController = TextEditingController();
  // String team = 'male';
  // Gender _gender = Gender.male;
  final _ageController = TextEditingController();
  final _jerseyNoController = TextEditingController();
  final _teamController = TextEditingController();
  final _rollController = TextEditingController();
  final _matchesController = TextEditingController();
  final _runsController = TextEditingController();
  final _runRateController = TextEditingController();
  final _strikeRateController = TextEditingController();
  final _foursController = TextEditingController();
  final _sixesController = TextEditingController();
  final _fiftiesController = TextEditingController();
  final _hundredsController = TextEditingController();
  final _wicketsController = TextEditingController();
  final _wicketsStrikeRateController = TextEditingController();
  final _economyRateController = TextEditingController();
  final _maidensController = TextEditingController();
  final _fiveWicketsController = TextEditingController();
  final _catchesController = TextEditingController();
  @override
  void initState() {
    id = widget.players.id;
    _nameController.text = widget.players.name;
    _ageController.text = widget.players.age;
    _jerseyNoController.text = widget.players.jerseyNo;
    _teamController.text = widget.players.team;
    _rollController.text = widget.players.roll;
    _runsController.text = widget.players.runs;
    _runRateController.text = widget.players.runRate;
    _matchesController.text = widget.players.matches;
    _foursController.text = widget.players.fours;
    _sixesController.text = widget.players.sixes;
    _fiftiesController.text = widget.players.fifties;
    _hundredsController.text = widget.players.hundreds;
    _wicketsController.text = widget.players.wickets;
    _wicketsStrikeRateController.text = widget.players.wicketsStrikeRate;
    _strikeRateController.text = widget.players.strikeRate;
    _economyRateController.text = widget.players.economyRate;
    _maidensController.text = widget.players.maidens;
    _fiveWicketsController.text = widget.players.fiveWickets;
    _catchesController.text = widget.players.catches;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Player'),
      ),
      body: Form(
        key: _addFormKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Card(
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    width: 440,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Full Name'),
                              TextFormField(
                                controller: _nameController,
                                decoration: const InputDecoration(
                                  hintText: 'Full Name',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter full name';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        //   child: Column(
                        //     children: <Widget>[
                        //       Text('Gender'),
                        //       ListTile(
                        //         title: const Text('Male'),
                        //         leading: Radio(
                        //           value: Gender.male,
                        //           groupValue: _gender,
                        //           onChanged: (Gender value) {
                        //             setState(() {
                        //               _gender = value;
                        //               gender = 'male';
                        //             });
                        //           },
                        //         ),
                        //       ),
                        //       ListTile(
                        //         title: const Text('Female'),
                        //         leading: Radio(
                        //           value: Gender.female,
                        //           groupValue: _gender,
                        //           onChanged: (Gender value) {
                        //             setState(() {
                        //               _gender = value;
                        //               gender = 'female';
                        //             });
                        //           },
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Age'),
                              TextFormField(
                                controller: _ageController,
                                decoration: const InputDecoration(
                                  hintText: 'Age',
                                ),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter age';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Jersey No'),
                              TextFormField(
                                controller: _jerseyNoController,
                                decoration: const InputDecoration(
                                  hintText: 'Jersey No',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter jersey no';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Team'),
                              TextFormField(
                                controller: _teamController,
                                decoration: const InputDecoration(
                                  hintText: 'Team',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter team';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Roll'),
                              TextFormField(
                                controller: _rollController,
                                decoration: const InputDecoration(
                                  hintText: 'Roll',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter roll';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Matches'),
                              TextFormField(
                                controller: _matchesController,
                                decoration: const InputDecoration(
                                  hintText: 'Matches',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter matches';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Runs'),
                              TextFormField(
                                controller: _runsController,
                                decoration: const InputDecoration(
                                  hintText: 'Runs',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter runs';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Run Rate'),
                              TextFormField(
                                controller: _runRateController,
                                decoration: const InputDecoration(
                                  hintText: 'Run rate',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter run rate';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Strike rate'),
                              TextFormField(
                                controller: _strikeRateController,
                                decoration: const InputDecoration(
                                  hintText: 'Strike rate',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter stricke rate';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Fours'),
                              TextFormField(
                                controller: _foursController,
                                decoration: const InputDecoration(
                                  hintText: 'Fours',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter no of fours';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Sixes'),
                              TextFormField(
                                controller: _sixesController,
                                decoration: const InputDecoration(
                                  hintText: 'Sixes',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter no of sixes';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Fifties'),
                              TextFormField(
                                controller: _fiftiesController,
                                decoration: const InputDecoration(
                                  hintText: 'Fifties',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter no of fifties';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Hundreds'),
                              TextFormField(
                                controller: _hundredsController,
                                decoration: const InputDecoration(
                                  hintText: 'Hundreds',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter no of hundreds';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Wickets'),
                              TextFormField(
                                controller: _wicketsController,
                                decoration: const InputDecoration(
                                  hintText: 'Wickets',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter no of wickets';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Wickets Strike Rate'),
                              TextFormField(
                                controller: _wicketsStrikeRateController,
                                decoration: const InputDecoration(
                                  hintText: 'Wickets Strike Rate',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter Wickets Strike Rate';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Economy Rate'),
                              TextFormField(
                                controller: _economyRateController,
                                decoration: const InputDecoration(
                                  hintText: 'Economy Rate',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter Economy Rate';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Maidens'),
                              TextFormField(
                                controller: _maidensController,
                                decoration: const InputDecoration(
                                  hintText: 'Maidens',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter no of maidens';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Five Wickets'),
                              TextFormField(
                                controller: _fiveWicketsController,
                                decoration: const InputDecoration(
                                  hintText: 'Five Wickets',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter no of Five Wickets';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text('Catches'),
                              TextFormField(
                                controller: _catchesController,
                                decoration: const InputDecoration(
                                  hintText: 'Catches',
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter no of Catches';
                                  }
                                  return null;
                                },
                                onChanged: (value) {},
                              ),
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
                                  if (_addFormKey.currentState.validate()) {
                                    _addFormKey.currentState.save();
                                    final res = api.updatePlayer(
                                        id,
                                        Players(
                                          name: _nameController.text,
                                          age: _ageController.text,
                                          jerseyNo: _jerseyNoController.text,
                                          team: _teamController.text,
                                          roll: _rollController.text,
                                          matches: _matchesController.text,
                                          runs: _runsController.text,
                                          runRate: _runRateController.text,
                                          strikeRate:
                                              _strikeRateController.text,
                                          fours: _foursController.text,
                                          sixes: _sixesController.text,
                                          fifties: _fiftiesController.text,
                                          hundreds: _hundredsController.text,
                                          wickets: _wicketsController.text,
                                          wicketsStrikeRate:
                                              _wicketsStrikeRateController.text,
                                          economyRate:
                                              _economyRateController.text,
                                          maidens: _maidensController.text,
                                          fiveWickets:
                                              _fiveWicketsController.text,
                                          catches: _catchesController.text,
                                        ));
                                    print(res);
                                    // res.then((value) =>
                                    // value ?? Navigator.pop(context));
                                    if (res != '') {
                                      Navigator.pop(context, 'updated');
                                    }
                                    // Navigator.pop(context);
                                  }
                                },
                                child: Text('Save',
                                    style: TextStyle(color: Colors.white)),
                                color: Colors.blue,
                              )
                            ],
                          ),
                        ),
                      ],
                    ))),
          ),
        ),
      ),
    );
  }
}
