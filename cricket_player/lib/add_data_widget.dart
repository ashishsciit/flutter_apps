import 'package:cricket_player/models/players.dart';
import 'package:cricket_player/services/api_services.dart';
import 'package:flutter/material.dart';

class AddDataWidget extends StatefulWidget {
  @override
  _AddDataWidgetState createState() => _AddDataWidgetState();
}

class _AddDataWidgetState extends State<AddDataWidget> {
  final ApiService api = ApiService();
  final _addFormKey = GlobalKey<FormState>();
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
  // final _teamController = TextEditingController();
  // final _rollController = TextEditingController();
  // final _matchesController = TextEditingController();
  // final _runsController = TextEditingController();

  // String status = 'positive';
  // Status _status = Status.positive;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Player'),
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
                                // initialValue: (){},                                ,
                                controller: _nameController..text = "Name",
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
                                controller: _rollController..text = "Batsman",
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
                                controller: _matchesController..text = "0",
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
                                controller: _runsController..text = "0",
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
                                controller: _runRateController..text = "0.00",
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
                                controller: _strikeRateController
                                  ..text = "0.00",
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
                                controller: _foursController..text = "0",
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
                                controller: _sixesController..text = "0",
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
                                controller: _fiftiesController..text = "0",
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
                                controller: _hundredsController..text = "0",
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
                                controller: _wicketsController..text = "0",
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
                                controller: _wicketsStrikeRateController
                                  ..text = "0.00",
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
                                controller: _economyRateController
                                  ..text = "0.00",
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
                                controller: _maidensController..text = "0",
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
                                controller: _fiveWicketsController..text = "0",
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
                                controller: _catchesController..text = "0",
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
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        //   child: Column(
                        //     children: <Widget>[
                        //       Text('Status'),
                        //       ListTile(
                        //         title: const Text('Positive'),
                        //         leading: Radio(
                        //           value: Status.positive,
                        //           groupValue: _status,
                        //           onChanged: (Status value) {
                        //             setState(() {
                        //               _status = value;
                        //               status = 'positive';
                        //             });
                        //           },
                        //         ),
                        //       ),
                        //       ListTile(
                        //         title: const Text('Dead'),
                        //         leading: Radio(
                        //           value: Status.dead,
                        //           groupValue: _status,
                        //           onChanged: (Status value) {
                        //             setState(() {
                        //               _status = value;
                        //               status = 'dead';
                        //             });
                        //           },
                        //         ),
                        //       ),
                        //       ListTile(
                        //         title: const Text('Recovered'),
                        //         leading: Radio(
                        //           value: Status.recovered,
                        //           groupValue: _status,
                        //           onChanged: (Status value) {
                        //             setState(() {
                        //               _status = value;
                        //               status = 'recovered';
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
                              RaisedButton(
                                splashColor: Colors.red,
                                onPressed: () {
                                  if (_addFormKey.currentState.validate()) {
                                    _addFormKey.currentState.save();
                                    api.createPlayer(Players(
                                      name: _nameController.text,
                                      age: _ageController.text,
                                      jerseyNo: _jerseyNoController.text,
                                      team: _teamController.text,
                                      roll: _rollController.text,
                                      matches: _matchesController.text,
                                      runs: _runsController.text,
                                      runRate: _runRateController.text,
                                      strikeRate: _strikeRateController.text,
                                      fours: _foursController.text,
                                      sixes: _sixesController.text,
                                      fifties: _fiftiesController.text,
                                      hundreds: _hundredsController.text,
                                      wickets: _wicketsController.text,
                                      wicketsStrikeRate:
                                          _wicketsStrikeRateController.text,
                                      economyRate: _economyRateController.text,
                                      maidens: _maidensController.text,
                                      fiveWickets: _fiveWicketsController.text,
                                      catches: _catchesController.text,
                                    ));
                                    Navigator.pop(context);
                                  }
                                },
                                child: Text('Create',
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
