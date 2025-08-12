import 'package:birdie/auth/auth.dart';
import 'package:birdie/auth/login_or_register.dart';
import 'package:birdie/firebase_options.dart';
import 'package:birdie/pages/home_page.dart';
import 'package:birdie/pages/profile_page.dart';
import 'package:birdie/pages/users_page.dart';
import 'package:birdie/themes/dark_mode.dart';
import 'package:birdie/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Birdie',
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/login_register_page': (context) => const LoginOrRegister(),
        '/home_page': (context) => HomePage(),
        '/profile_page': (context) => ProfilePage(),
        '/users_page': (context) => const UsersPage(),
      },
    );
  }
}
