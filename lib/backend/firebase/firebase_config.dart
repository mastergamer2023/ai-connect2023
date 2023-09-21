import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAuUW9E5NZqCtUcvjZlRA8T9c8rAgALl1k",
            authDomain: "aitekcloud.firebaseapp.com",
            projectId: "aitekcloud",
            storageBucket: "aitekcloud.appspot.com",
            messagingSenderId: "914418640627",
            appId: "1:914418640627:web:bb7a0a14f855a99206f986",
            measurementId: "G-FRYR1P6CS1"));
  } else {
    await Firebase.initializeApp();
  }
}
