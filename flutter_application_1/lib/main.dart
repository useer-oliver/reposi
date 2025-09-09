import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu), // Ícono de menú
          title: const Text('Datos Personales'), // Título de la AppBar
          backgroundColor: Colors.purple,
          actions: const [
            Icon(Icons.more_vert), // Ícono de more_vert
          ],
        ),
        body: SingleChildScrollView( // Habilita el scroll si hay overflow

          child: Column(

            children: [

              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.grey, // Color de fondo gris
                child: const Text('Nombre y Apellidos'), // Texto dentro del primer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers
              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.grey, // Color de fondo azul
                child: const Text('Dirección'), // Texto dentro del segundo Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers
              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.grey, // Color de fondo azul
                child: const Text('Chile'), // Texto dentro del tercer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers

                Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.grey, // Color de fondo azul
                child: const Text('Estado/Región'), // Texto dentro del tercer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers

              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.grey, // Color de fondo azul
                child: const Text('Localidad'), // Texto dentro del tercer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers

              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.grey, // Color de fondo azul
                child: const Text('Código Postal'), // Texto dentro del tercer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers

              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.white, // Color de fondo azul
                child: const Text('Mis datos de facturación son diferentes'), // Texto dentro del tercer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers

              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.white, // Color de fondo azul
                child: const Text('Datos de Contacto'), // Texto dentro del tercer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers

              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.grey, // Color de fondo azul
                child: const Text('Correo Electrónico'), // Texto dentro del tercer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers

              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.grey, // Color de fondo azul
                child: const Text('Teléfono móvil'), // Texto dentro del tercer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers

              Container(
                height: 70.0, // Altura de 70 píxeles
                width: double.infinity, // Ocupa todo el ancho disponible
                color: Colors.grey, // Color de fondo azul
                child: const Text('Teléfono fijo'), // Texto dentro del tercer Container
              ),
              const SizedBox(height: 12.0), // Espacio de 12 píxeles entre los containers

            


            ],

          ),

        ),
      ),
    );
  }
}
