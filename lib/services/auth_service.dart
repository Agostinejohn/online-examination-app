import '../models/user.dart';
import 'package:collection/collection.dart'; // Import the collection package for firstWhereOrNull

class AuthService {
  final List<User> _users = [
    User(id: '1', email: 'test@example.com', password: 'password123', isAdmin: false),
    User(id: '2', email: 'admin@example.com', password: 'adminpass', isAdmin: true),
  ];
  User? _currentUser;

  User? get currentUser => _currentUser;

  Future<bool> register(String email, String password, bool isAdmin) async {
    if (_users.any((user) => user.email == email)) {
      print('Register failed: Email $email already registered');
      return false;
    }
    String id = DateTime.now().millisecondsSinceEpoch.toString();
    _users.add(User(id: id, email: email, password: password, isAdmin: isAdmin));
    print('Register successful: Email $email registered');
    return true;
  }

  Future<User?> login(String email, String password) async {
    User? user = _users.firstWhereOrNull((user) => user.email == email && user.password == password);
    if (user != null) {
      _currentUser = user;
      print('Login successful: Email $email');
    } else {
      print('Login failed: Invalid email or password');
    }
    return user;
  }

  void deleteUser(String id) {
    _users.removeWhere((user) => user.id == id);
  }

  List<User> getUsers() => _users;

  void logout() {
    _currentUser = null;
  }
}
