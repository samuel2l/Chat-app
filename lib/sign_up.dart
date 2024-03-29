import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String email;
  late String password;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                // textAlign: TextAlign.justify,
                decoration: const InputDecoration(
                  hintText: 'Enter email',
                ),
                onChanged: (value) => email = value,
              ),
              TextField(
                obscureText: true,
                // textAlign: TextAlign.justify,
                decoration: const InputDecoration(
                  hintText: 'Enter password',
                ),
                onChanged: (value) => password = value,
              ),
              TextButton(
                  onPressed: () async {
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      Navigator.pushNamed(context, '/chat');
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: const Text('sign up'))
            ],
          ),
        ),
      ),
    );
  }
}
