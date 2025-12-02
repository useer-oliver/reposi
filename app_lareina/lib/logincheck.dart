import 'package:app_lareina/inicio.dart';
import 'package:app_lareina/main.dart';
import 'package:app_lareina/pagehome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainCheck extends StatelessWidget {
  
  const MainCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return RootPage();}
            else{return LoginPage();
          }
        },
      ),
    );
  }
}