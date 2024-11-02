import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    final optionsMap = <TargetPlatform, FirebaseOptions>{
      TargetPlatform.android: android,
    };

    final platformOptions = optionsMap[defaultTargetPlatform];
    if (platformOptions != null) {
      return platformOptions;
    } else {
      throw UnsupportedError(
        'DefaultFirebaseOptions are not supported for this platform.',
      );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkPd79Ta-qSrblavJRvDni4-gW0crKeMs',
    appId: '1:557026518999:android:933fe3b6653788eed2cd92',
    messagingSenderId: '557026518999',
    projectId: 'zenime-8',
    storageBucket: 'zenime-8.appspot.com',
  );
}
