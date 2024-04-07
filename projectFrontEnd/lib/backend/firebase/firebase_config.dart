import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDDtLLQhekQejy6cuSYIICmX9EvWCzOtdo",
            authDomain: "project2-9c3a5.firebaseapp.com",
            projectId: "project2-9c3a5",
            storageBucket: "project2-9c3a5.appspot.com",
            messagingSenderId: "795639191589",
            appId: "1:795639191589:web:99e2e48b8b5b87290d87cc",
            measurementId: "G-NLT6FHDDL4"));
  } else {
    await Firebase.initializeApp();
  }
}
