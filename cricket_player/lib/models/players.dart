class Players {
  String _id;
  String _name;
  String _age;
  String _jerseyNo;
  String _team;
  String _roll;
  String _matches;
  String _runs;
  String _runRate;
  String _strikeRate;
  String _fours;
  String _sixes;
  String _fifties;
  String _hundreds;
  String _wickets;
  String _wicketsStrikeRate;
  String _economyRate;
  String _maidens;
  String _fiveWickets;
  String _catches;

  Players(
      {String id,
      String name,
      String age,
      String jerseyNo,
      String team,
      String roll,
      String matches,
      String runs,
      String runRate,
      String strikeRate,
      String fours,
      String sixes,
      String fifties,
      String hundreds,
      String wickets,
      String wicketsStrikeRate,
      String economyRate,
      String maidens,
      String fiveWickets,
      String catches}) {
    this._id = id;
    this._name = name;
    this._age = age;
    this._jerseyNo = jerseyNo;
    this._team = team;
    this._roll = roll;
    this._matches = matches;
    this._runs = runs;
    this._runRate = runRate;
    this._strikeRate = strikeRate;
    this._fours = fours;
    this._sixes = sixes;
    this._fifties = fifties;
    this._hundreds = hundreds;
    this._wickets = wickets;
    this._wicketsStrikeRate = wicketsStrikeRate;
    this._economyRate = economyRate;
    this._maidens = maidens;
    this._fiveWickets = fiveWickets;
    this._catches = catches;
  }

  factory Players.fromJson(Map<String, dynamic> json) {
    return Players(
      id: json['id'] as String,
      name: json['name'] as String,
      age: json['age'] as String,
      jerseyNo: json['jersey_no'] as String,
      team: json['team'] as String,
      roll: json['roll'] as String,
      matches: json['matches'] as String,
      runs: json['runs'] as String,
      runRate: json['run_rate'] as String,
      strikeRate: json['strike_rate'] as String,
      fours: json['fours'] as String,
      sixes: json['sixes'] as String,
      fifties: json['fifties'] as String,
      hundreds: json['hundreds'] as String,
      wickets: json['wickets'] as String,
      wicketsStrikeRate: json['wickets_strike_rate'] as String,
      economyRate: json['economy_rate'] as String,
      maidens: json['maidens'] as String,
      fiveWickets: json['five_wickets'] as String,
      catches: json['catches'] as String,
    );
  }

  @override
  String toString() {
    return 'Players{id: $id, name: $name, age: $age}';
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get age => _age;
  set age(String age) => _age = age;
  String get jerseyNo => _jerseyNo;
  set jerseyNo(String jerseyNo) => _jerseyNo = jerseyNo;
  String get team => _team;
  set team(String team) => _team = team;
  String get roll => _roll;
  set roll(String roll) => _roll = roll;
  String get matches => _matches;
  set matches(String matches) => _matches = matches;
  String get runs => _runs;
  set runs(String runs) => _runs = runs;
  String get runRate => _runRate;
  set runRate(String runRate) => _runRate = runRate;
  String get strikeRate => _strikeRate;
  set strikeRate(String strikeRate) => _strikeRate = strikeRate;
  String get fours => _fours;
  set fours(String fours) => _fours = fours;
  String get sixes => _sixes;
  set sixes(String sixes) => _sixes = sixes;
  String get fifties => _fifties;
  set fifties(String fifties) => _fifties = fifties;
  String get hundreds => _hundreds;
  set hundreds(String hundreds) => _hundreds = hundreds;
  String get wickets => _wickets;
  set wickets(String wickets) => _wickets = wickets;
  String get wicketsStrikeRate => _wicketsStrikeRate;
  set wicketsStrikeRate(String wicketsStrikeRate) =>
      _wicketsStrikeRate = wicketsStrikeRate;
  String get economyRate => _economyRate;
  set economyRate(String economyRate) => _economyRate = economyRate;
  String get maidens => _maidens;
  set maidens(String maidens) => _maidens = maidens;
  String get fiveWickets => _fiveWickets;
  set fiveWickets(String fiveWickets) => _fiveWickets = fiveWickets;
  String get catches => _catches;
  set catches(String catches) => _catches = catches;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['age'] = this._age;
    data['jersey_no'] = this._jerseyNo;
    data['team'] = this._team;
    data['roll'] = this._roll;
    data['matches'] = this._matches;
    data['runs'] = this._runs;
    data['run_rate'] = this._runRate;
    data['strike_rate'] = this._strikeRate;
    data['fours'] = this._fours;
    data['sixes'] = this._sixes;
    data['fifties'] = this._fifties;
    data['hundreds'] = this._hundreds;
    data['wickets'] = this._wickets;
    data['wickets_strike_rate'] = this._wicketsStrikeRate;
    data['economy_rate'] = this._economyRate;
    data['maidens'] = this._maidens;
    data['five_wickets'] = this._fiveWickets;
    data['catches'] = this._catches;
    return data;
  }
}
