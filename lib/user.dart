class User {
  String id;
  final String name;
  final double height;
  final int age;
  final double weight;

  User(
    this.id, {
    required this.name,
    required this.age,
    required this.height,
    required this.weight,
  });
}

List<User> users = [];
