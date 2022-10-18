class User {
  final String id;
  final String email;
  final String name;

  User(this.id, this.email, this.name);

  @override
  String toString() {
    return "User(id: $id, email: $email, name: $name)";
  }
}
