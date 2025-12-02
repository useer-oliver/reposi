import 'package:app_lareina/calendar.dart';
import 'package:app_lareina/inicio.dart';
import 'package:app_lareina/newprofile.dart';
import 'package:app_lareina/pagehome.dart';
import 'package:app_lareina/profile.dart';
import 'package:app_lareina/search.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:app_lareina/screens/splashscreen.dart';
import 'package:app_lareina/screens/activities.dart';
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

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme:ThemeData(
        appBarTheme: AppBarTheme(
     color: const Color(0xFF2782C3),
     
        )
        ),
      
      home: SplashScreen(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage =0;
  List<Widget> pages = [InicioPage(), SearchPage(), DaysPage() ,Newprofile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentPage],

    
      bottomNavigationBar: NavigationBar ( 
        
  backgroundColor: Color(0xFF2782C3), destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
        NavigationDestination(icon: Icon(Icons.search), label: 'Buscar'),
        NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Calendario'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Perfil'), 
      ],
      onDestinationSelected: (int index){
        setState((){
          currentPage = index; 
        });
      },
      selectedIndex: currentPage,
      ),

    );  

  }
}