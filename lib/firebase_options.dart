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
    apiKey: 'AIzaSyDebx3rKhqHnwIv9e7dp3A913C-q4vraW0',
    appId: '1:897626689242:web:f2c1a180595a13ae5bdfe3',
    messagingSenderId: '897626689242',
    projectId: 'myfirebase-a2330',
    authDomain: 'myfirebase-a2330.firebaseapp.com',
    storageBucket: 'myfirebase-a2330.appspot.com',
    measurementId: 'G-LDH5E9KTB9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnx2j6Ob8QvE0F5Ew-jXTGPnTZfwwJ9MQ',
    appId: '1:897626689242:android:4d2c109e53777e155bdfe3',
    messagingSenderId: '897626689242',
    projectId: 'myfirebase-a2330',
    storageBucket: 'myfirebase-a2330.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0g2RIDgQXdc5Us7U2PFPagzTnQz2-Dkk',
    appId: '1:897626689242:ios:cb77966c94aa28b15bdfe3',
    messagingSenderId: '897626689242',
    projectId: 'myfirebase-a2330',
    storageBucket: 'myfirebase-a2330.appspot.com',
    iosBundleId: 'com.example.flutterProjrcts',
  );
}
