class User {
  String id;
  String email;
  String password;
  bool isAdmin;

  User({
    required this.id,
    required this.email,
    required this.password,
    this.isAdmin = false,
  });
}
