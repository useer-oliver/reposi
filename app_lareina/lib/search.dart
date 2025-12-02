import 'package:flutter/material.dart';

 class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
      bool? isCheck = false;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text('Filtros',style: TextStyle(color:Colors.white),),
      automaticallyImplyLeading: false,

      ),

      body: SingleChildScrollView(

        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                        'Tipo de evento',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF1C1C1C),
                        ),
                      ),
                ],
              ),
                  SizedBox(height: 3),
              
              Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Música',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),
              Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Deporte',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),

              Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Arte',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),

              Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Cultura',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),

              Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Tecnología',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),

              Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Social',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),

              Row(
                children: [
                  Text(
                        'Rango de precio',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF1C1C1C),
                        ),
                      ),
                ],
              ),
                  SizedBox(height: 3),

                  Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Gratuitos',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),

              Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Menos de 5.0000',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),

              Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Entre 5.000 y 15.000',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),

              Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Más de 15.000',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],
              ),

              Row(
                children: [
                  Text(
                        'Formato',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF1C1C1C),
                        ),
                      ),
                ],
              ),
                  SizedBox(height: 3),

                  Row(
                children: [
                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Presencial',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),  

                  Checkbox(value: isCheck, onChanged: (bool? newBool){
                      setState(() {
                         isCheck = newBool;
                      });
                  }),

              Text(
                    'Online',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                     
                      fontSize: 15,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  SizedBox(height: 3),    
                ],

                
              ),


              
            ],
          ),
        ),

      )



    );
  }

  }
