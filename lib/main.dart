import 'dart:io';

import 'package:chatapp/chats.dart';
import 'package:chatapp/login.dart';
import 'package:chatapp/signup.dart';
// import 'package:chatapp/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
Platform.isAndroid?
 await Firebase.initializeApp(options: const FirebaseOptions(apiKey:      "AIzaSyCbRZMBly5GIBdzhsPTgSJTxwSoa2SRjX4", appId:       "1:129389496021:android:d9d1dc0ab4044f9c72045c"
, messagingSenderId: "129389496021", projectId:       "chat-app-4d8ae"  )):await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {'/chat': (context) => const ChatScreen(),
        '/login': (context) => const LogIn(),
        },
        home: const SignUp());
  }
}
