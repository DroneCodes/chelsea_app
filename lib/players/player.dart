// ignore_for_file: dead_code

class Player {
  final String name;
  final int number;
  final int age;
  final String images;

  Player(
      {required this.name,
      required this.number,
      required this.age,
      required this.images});

  factory Player.fromJson(dynamic json) {
    return Player(
        name: json['name'] as String,
        number: json['shirtNumber'] as int,
        age: json['age'] as int,
        images: json['image'] as String);
  }

  static List<Player> playersFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Player.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Player {name: $name, number: $number, age: $age, images: $images} ';
  }
}
