import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:physio_fit/presentation/onboarding/landing_page.dart';
import 'package:physio_fit/presentation/physiotherapy/physiotherapy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  // FirebaseDatabase.instance.setPersistenceEnabled(true);
  // FirebaseDatabase.instance.ref().keepSynced(true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LandingPage());
  }
}
