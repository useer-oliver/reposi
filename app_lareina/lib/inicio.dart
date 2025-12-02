import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}



class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio',style: TextStyle(color:Colors.white),),
      automaticallyImplyLeading: false,

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 1)
              ),
            
            
                child:OverflowBox(
                  child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset('assets/feria.jpeg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          
                          children: [
                            Text('Feria de ilustración',),
                            
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on, color: Colors.grey),
                                  Text('Casa Nemesio',style: TextStyle( color: Colors.grey,)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  Icon(Icons.calendar_month, color: Colors.grey,),
                                  Text('10 de Diciembre',style: TextStyle( color: Colors.grey,)),
                                ],
                              ),
                            ),
                            
                          ],
                        
                          
                        ),
                      ),
                      Padding(
                        
                              padding: const EdgeInsets.only(left: 40.0, right: 0,),
                              child: Text('Ver más',style: TextStyle( color: Colors.blue,)),
                            ),
                    ],
            
                    
                  ),

                  
            
                  
                ),
            
                  
            
            
              ),Container(
              height: 130,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 1)
              ),
            
            
                child:OverflowBox(
                  child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset('assets/tocata.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          
                          children: [
                            Text('Tocata comunal',),
                            
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on, color: Colors.grey),
                                  Text('Parque Mahuida',style: TextStyle( color: Colors.grey,)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  Icon(Icons.calendar_month, color: Colors.grey,),
                                  Text('13 de Diciembre',style: TextStyle( color: Colors.grey,)),
                                ],
                              ),
                            ),
                            
                          ],
                        
                          
                        ),
                      ),
                      Padding(
                        
                              padding: const EdgeInsets.only(left: 40.0, right: 0,),
                              child: Text('Ver más',style: TextStyle( color: Colors.blue,)),
                            ),
                    ],
            
                    
                  ),

                  
            
                  
                ),
            
                  
            
            
              ),
          ],

          
        )

          

        
            
        
          
        ));}}

