import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_connect/firebase_options.dart';
import 'package:social_connect/services/auth_service.dart';
import 'package:social_connect/widgets/auth_check.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthService()),
    ],
    child: MaterialApp(home: AuthCheck()),
  ));
}
