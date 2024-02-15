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
    apiKey: 'AIzaSyA-EzliEy5SzsGAD30OirFzOWL1st0Yi6E',
    appId: '1:767233156012:web:bd6ecfaad78e7f56489009',
    messagingSenderId: '767233156012',
    projectId: 'chatapp-89',
    authDomain: 'chatapp-89.firebaseapp.com',
    storageBucket: 'chatapp-89.appspot.com',
    measurementId: 'G-Q1KYHEJ0E7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgcbLorjR1vEzG9LTYl5pUEGz2jC_HlhU',
    appId: '1:767233156012:android:9c1243e37966799f489009',
    messagingSenderId: '767233156012',
    projectId: 'chatapp-89',
    storageBucket: 'chatapp-89.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcBBnFYDEMLbnoSweK9XZXQjO1j1dHZp8',
    appId: '1:767233156012:ios:6fc18dd14a957c8e489009',
    messagingSenderId: '767233156012',
    projectId: 'chatapp-89',
    storageBucket: 'chatapp-89.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCcBBnFYDEMLbnoSweK9XZXQjO1j1dHZp8',
    appId: '1:767233156012:ios:887bf1cb2d131e95489009',
    messagingSenderId: '767233156012',
    projectId: 'chatapp-89',
    storageBucket: 'chatapp-89.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
