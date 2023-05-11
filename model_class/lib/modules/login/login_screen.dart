import 'package:flutter/material.dart';
import 'package:model_class/modules/whats/whats_app.dart';

class LoginScreen extends StatelessWidget {
  //const LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final bool _obscurePassword = true;

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
              onChanged: (value) => {},
              onFieldSubmitted: (value) => {},
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  //  suffixIcon: Icon(Icons.remove_red_eye),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
              obscureText: _obscurePassword,
              onChanged: (value) => {},
              onFieldSubmitted: (value) => {},
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Access email and password controllers' text fields here
                print(_emailController.text);
                print(_passwordController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Task2()),
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Login'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
