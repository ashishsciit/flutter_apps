class Player {
  int id;
  String name;
  num runs;

  Player(this.id, this.name, this.runs);

  String toString() {
    return "{ ${this.id}, ${this.name}, ${this.runs} }";
  }
}
