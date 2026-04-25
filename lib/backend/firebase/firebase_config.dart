import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDnYtQWc164gxbapwNJHYv_pGQYbxBuvZo",
            authDomain: "projet-mobile-aiva.firebaseapp.com",
            projectId: "projet-mobile-aiva",
            storageBucket: "projet-mobile-aiva.firebasestorage.app",
            messagingSenderId: "1023218965546",
            appId: "1:1023218965546:web:6a5ea8a12dfc7c69a27753",
            measurementId: "G-QQ8KS4GWXE"));
  } else {
    await Firebase.initializeApp();
  }
}
