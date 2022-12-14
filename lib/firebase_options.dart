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
    apiKey: 'AIzaSyCugHfVeqCDxqH2wI04NgKWjpIg9WSUdsU',
    appId: '1:436519124894:web:c693123ff9d99967bd208f',
    messagingSenderId: '436519124894',
    projectId: 'us-project-ae0d3',
    authDomain: 'us-project-ae0d3.firebaseapp.com',
    storageBucket: 'us-project-ae0d3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxkyylEqvIBqqNcRivmBgOhxHqB57isQo',
    appId: '1:436519124894:android:369f48639387490bbd208f',
    messagingSenderId: '436519124894',
    projectId: 'us-project-ae0d3',
    storageBucket: 'us-project-ae0d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBc41JzQ0Fi6sWzqN8an6o1TZyzoUSFy5s',
    appId: '1:436519124894:ios:240f0ad53a21be9bbd208f',
    messagingSenderId: '436519124894',
    projectId: 'us-project-ae0d3',
    storageBucket: 'us-project-ae0d3.appspot.com',
    iosClientId: '436519124894-e58tbaiod1miit9c5uiakkvm4b4faidb.apps.googleusercontent.com',
    iosBundleId: 'com.example.semifinal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBc41JzQ0Fi6sWzqN8an6o1TZyzoUSFy5s',
    appId: '1:436519124894:ios:240f0ad53a21be9bbd208f',
    messagingSenderId: '436519124894',
    projectId: 'us-project-ae0d3',
    storageBucket: 'us-project-ae0d3.appspot.com',
    iosClientId: '436519124894-e58tbaiod1miit9c5uiakkvm4b4faidb.apps.googleusercontent.com',
    iosBundleId: 'com.example.semifinal',
  );
}
