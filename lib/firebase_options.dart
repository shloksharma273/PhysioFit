// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBeo3-om2WvAj-CDFIltyUzxjM3cZNGOmA',
    appId: '1:142516715335:android:11f365d299ed8df1741662',
    messagingSenderId: '142516715335',
    projectId: 'physiofit-6de2d',
    databaseURL: 'https://physiofit-6de2d-default-rtdb.firebaseio.com',
    storageBucket: 'physiofit-6de2d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1fkj8ukYq2LbyNre-BBztHqE8Wl61PgU',
    appId: '1:142516715335:ios:072b98f7b8effa3e741662',
    messagingSenderId: '142516715335',
    projectId: 'physiofit-6de2d',
    databaseURL: 'https://physiofit-6de2d-default-rtdb.firebaseio.com',
    storageBucket: 'physiofit-6de2d.appspot.com',
    iosBundleId: 'com.example.physioFit',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAJFvIYx2tAji39qoL7LwUOuldDsYaiB8Y',
    appId: '1:142516715335:web:f2e4370dce5101a8741662',
    messagingSenderId: '142516715335',
    projectId: 'physiofit-6de2d',
    authDomain: 'physiofit-6de2d.firebaseapp.com',
    databaseURL: 'https://physiofit-6de2d-default-rtdb.firebaseio.com',
    storageBucket: 'physiofit-6de2d.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1fkj8ukYq2LbyNre-BBztHqE8Wl61PgU',
    appId: '1:142516715335:ios:072b98f7b8effa3e741662',
    messagingSenderId: '142516715335',
    projectId: 'physiofit-6de2d',
    databaseURL: 'https://physiofit-6de2d-default-rtdb.firebaseio.com',
    storageBucket: 'physiofit-6de2d.appspot.com',
    iosBundleId: 'com.example.physioFit',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAJFvIYx2tAji39qoL7LwUOuldDsYaiB8Y',
    appId: '1:142516715335:web:3b078bd6071fbecb741662',
    messagingSenderId: '142516715335',
    projectId: 'physiofit-6de2d',
    authDomain: 'physiofit-6de2d.firebaseapp.com',
    databaseURL: 'https://physiofit-6de2d-default-rtdb.firebaseio.com',
    storageBucket: 'physiofit-6de2d.appspot.com',
  );

}