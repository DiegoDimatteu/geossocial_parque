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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAylwAWNnvFgKz-I2JdAh0HDLMyO3MungQ',
    appId: '1:3921317370:web:13da43d1e8d81a01466843',
    messagingSenderId: '3921317370',
    projectId: 'geossocial-tcc',
    authDomain: 'geossocial-tcc.firebaseapp.com',
    storageBucket: 'geossocial-tcc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUO1d5g1YZLn_DyUtn8dCd8pBvXkrsOXE',
    appId: '1:3921317370:android:9982a95adaa4f978466843',
    messagingSenderId: '3921317370',
    projectId: 'geossocial-tcc',
    storageBucket: 'geossocial-tcc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAG1GNx61XgZ3dnpDTRfCWVlXJf0LCIvg0',
    appId: '1:3921317370:ios:13094c189403614b466843',
    messagingSenderId: '3921317370',
    projectId: 'geossocial-tcc',
    storageBucket: 'geossocial-tcc.appspot.com',
    iosClientId: '3921317370-pbdc5tuli9k4ruu4b4ov0d0l0p32vtun.apps.googleusercontent.com',
    iosBundleId: 'com.example.geossocialParque',
  );
}
