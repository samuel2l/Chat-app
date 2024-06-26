// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAvhwYv_ErCUD9LsQo_3JbgoeeKjkmFhBw',
    appId: '1:129389496021:web:1ec97224adfdae5972045c',
    messagingSenderId: '129389496021',
    projectId: 'chat-app-4d8ae',
    authDomain: 'chat-app-4d8ae.firebaseapp.com',
    storageBucket: 'chat-app-4d8ae.appspot.com',
    measurementId: 'G-2SP3WQ9MKK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbRZMBly5GIBdzhsPTgSJTxwSoa2SRjX4',
    appId: '1:129389496021:android:d9d1dc0ab4044f9c72045c',
    messagingSenderId: '129389496021',
    projectId: 'chat-app-4d8ae',
    storageBucket: 'chat-app-4d8ae.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEilvwWZdqFtPuhCp3c9bilS3vigrjHhc',
    appId: '1:129389496021:ios:d1576af5e247b15572045c',
    messagingSenderId: '129389496021',
    projectId: 'chat-app-4d8ae',
    storageBucket: 'chat-app-4d8ae.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEilvwWZdqFtPuhCp3c9bilS3vigrjHhc',
    appId: '1:129389496021:ios:a17c68035a65020d72045c',
    messagingSenderId: '129389496021',
    projectId: 'chat-app-4d8ae',
    storageBucket: 'chat-app-4d8ae.appspot.com',
    iosBundleId: 'com.example.chatapp.RunnerTests',
  );
}
