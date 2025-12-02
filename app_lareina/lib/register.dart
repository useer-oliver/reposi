import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({super.key,required this.showLoginPage });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
 void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  
   Future signUp() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _usernameController.text.trim(), password: _passwordController.text.trim());
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  'Registrate',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Color(0xFF1C1C1C),
                  ),
                ),
                SizedBox(height: 6),
                
                SizedBox(height: 6),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),

                SizedBox(height: 6),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(height: 6),
                TextField(

                  decoration: InputDecoration(
                    labelText: 'Ingresa tu RUT',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),

                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10),

                  TextField(
                  decoration: InputDecoration(
                    labelText: 'Vuelve a Ingresar tu Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10),


                

                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 49,
                      child: GestureDetector(
                        onTap: signUp,
                        child: ElevatedButton(
                          onPressed: () {
                    
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF3B62FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Regístrate',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                    child: Text(
                      'O',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,

                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1C1C1C),
                  )

                      ),
                    ),
                ),

                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 49,
                      child: GestureDetector(
                        onTap: widget.showLoginPage,
                        child: ElevatedButton(
                          onPressed: () {
                    
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Inicia Sesión',
                            style: TextStyle(
                              color: const Color(0xFF3B62FF),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                
                
             
            ]),

          
        
    ))));
  }
}