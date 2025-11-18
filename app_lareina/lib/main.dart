import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:app_lareina/screens/splashscreen.dart';
import 'package:app_lareina/screens/products.dart';
import 'package:app_lareina/screens/login.dart';
import 'package:app_lareina/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
     options: const FirebaseOptions(
      apiKey: "AIzaSyBEenfV86OjBqv3POf-0fKlzB2p1Pi8Ch0",
      authDomain: "movilesudd-9b81c.firebaseapp.com",
      databaseURL: "https://movilesudd-default-rtdb.firebaseio.com",
      projectId: "movilesudd-9b81c",
      storageBucket: "movilesudd-9b81c.firebasestorage.app",
      messagingSenderId: "127287458321",
      appId: "1:127287458321:web:aadea31e64954310d14fb0",
      ),
    );
  } on FirebaseException catch (e) {
    // Si la app ya estaba inicializada, ignora el error
    if (e.code != 'duplicate-app') rethrow;
  }

  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _signOut(BuildContext context) async {
    await GoogleSignIn.instance.signOut();
    await FirebaseAuth.instance.signOut();

    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),

            onPressed: () => _signOut(context),
          ),
        ],
      ),
      body: const ProductsScreen(),
    );
  }
}
