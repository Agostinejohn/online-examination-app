import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isAdmin = false;

  void _registerUser() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    print('Attempting register with Email: $email, Password: $password, isAdmin: $_isAdmin');

    bool success = await _authService.register(email, password, _isAdmin);
    if (success) {
      Navigator.pushNamed(context, '/login');
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Email is already registered.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(label: 'Email', controller: _emailController),
            CustomTextField(label: 'Password', controller: _passwordController, obscureText: true),
            CheckboxListTile(
              title: const Text('Admin'),
              value: _isAdmin,
              onChanged: (value) {
                setState(() {
                  _isAdmin = value ?? false;
                });
              },
            ),
            CustomButton(
              text: 'Register',
              onPressed: _registerUser,
            ),
          ],
        ),
      ),
    );
  }
}
