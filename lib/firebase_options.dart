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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBuJ-S88exlRLTlT2gDrvMZHiwHTw3NjrU',
    appId: '1:991278076368:web:f55f1a0851fc56fd80e9d5',
    messagingSenderId: '991278076368',
    projectId: 'baby-d1667',
    authDomain: 'baby-d1667.firebaseapp.com',
    storageBucket: 'baby-d1667.appspot.com',
    measurementId: 'G-MH9FD7NRXD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBl5QaBDPmdtJpVIaJY2Q0s59P7KmuNefI',
    appId: '1:991278076368:android:8e56ef0014c7aa4380e9d5',
    messagingSenderId: '991278076368',
    projectId: 'baby-d1667',
    storageBucket: 'baby-d1667.appspot.com',
  );
}
