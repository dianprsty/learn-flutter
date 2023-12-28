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
    apiKey: 'AIzaSyDSX_mbPpRxZDwdLJCl7WhRqoZ-gwFnWPA',
    appId: '1:1068757133038:web:0cbf7c1d8ce7044a9335ff',
    messagingSenderId: '1068757133038',
    projectId: 'auth-service-204f9',
    authDomain: 'auth-service-204f9.firebaseapp.com',
    storageBucket: 'auth-service-204f9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4IOCD3MGym7BXOSRMBjZaWoXSYLbeE9s',
    appId: '1:1068757133038:android:11d2e7be086cf4ca9335ff',
    messagingSenderId: '1068757133038',
    projectId: 'auth-service-204f9',
    storageBucket: 'auth-service-204f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDU5KyfVlXilfHEeNHdJqRNndr8hT6ki5E',
    appId: '1:1068757133038:ios:9415fc02063bd1699335ff',
    messagingSenderId: '1068757133038',
    projectId: 'auth-service-204f9',
    storageBucket: 'auth-service-204f9.appspot.com',
    iosBundleId: 'com.example.sanberappflutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDU5KyfVlXilfHEeNHdJqRNndr8hT6ki5E',
    appId: '1:1068757133038:ios:16dccd2b6681f58a9335ff',
    messagingSenderId: '1068757133038',
    projectId: 'auth-service-204f9',
    storageBucket: 'auth-service-204f9.appspot.com',
    iosBundleId: 'com.example.sanberappflutter.RunnerTests',
  );
}