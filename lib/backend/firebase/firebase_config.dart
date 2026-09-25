import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC1nQtif9HAP4xYPE0S0gJJ-ZVTPer5mP4",
            authDomain: "b-flix-79268.firebaseapp.com",
            projectId: "b-flix-79268",
            storageBucket: "b-flix-79268.appspot.com",
            messagingSenderId: "1053228432511",
            appId: "1:1053228432511:web:9920890e35771946c5534a"));
  } else {
    await Firebase.initializeApp();
  }
}
