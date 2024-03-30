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
    print('SIGN UP SCREEN');
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                // textAlign: TextAlign.justify,
                decoration: const InputDecoration(
                    hintText: 'Enter email', fillColor: Colors.blue),
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
                    print('password used'+password);
                    print('email used'+email);
                    // ignore: unused_local_variable
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    Navigator.pushNamed(context, '/chat');
                  } catch (e) {
                    print('nigoi nfionirofnoier nf');
                    print(e);
                  }
                },
                child: const Text('sign up'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('login'))
            ],
          ),
        ),
      ),
    );
  }
}
