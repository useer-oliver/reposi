import 'package:app_lareina/ultis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';



class Newprofile extends StatefulWidget {
  const Newprofile({super.key});

  @override
  State<Newprofile> createState() => _NewprofileState();
}

class _NewprofileState extends State<Newprofile> {
    final _usernameController = TextEditingController();
    final _genderController = TextEditingController();
  final _passwordController = TextEditingController();
  Uint8List? _image;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  void selectImage() async{
    Uint8List img =  await pickImage(ImageSource.gallery);
     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = img;
    });
    
  }

 

  final picker = ImagePicker();
void saveProfile()async{
  String name = nameController.text;
  String bio = bioController.text;
  
}
  
  @override
  void dispose() {
    _usernameController.dispose();
    _genderController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    _image !=null?
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: MemoryImage(_image!), 
                    )
                    :
                   const CircleAvatar( 
                      radius: 70,
                      backgroundImage: NetworkImage('https://www.freeiconspng.com/uploads/am-a-19-year-old-multimedia-artist-student-from-manila--21.png'),
                    ),
                    Positioned(child: IconButton(onPressed: selectImage, 
                    icon: const Icon(Icons.add_a_photo),)

                   
                    
                    ,bottom: -10,
                    left: 80,
                    )]
                ),
                  
                Text(
                  'Nombre Usuario',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Color(0xFF1C1C1C),
                  ),
                ),

                SizedBox(height: 26),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Número telefónico',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
            
                  SizedBox(height: 26),
                  TextField(
                    controller: _genderController,
                    decoration: InputDecoration(
                      labelText: 'Género',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
            
                  SizedBox(height: 26),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Fecha de nacimiento',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                ]),
          ),
        ),
      ),
      
        );
      
    
  }
}