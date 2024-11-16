import 'package:flutter/material.dart';
import '../services/firebase_service.dart';


class AddUsuario extends StatefulWidget {
  const AddUsuario({super.key});

  @override
  State<AddUsuario> createState() => _AddUsuarioState();
}

class _AddUsuarioState extends State<AddUsuario> {
  TextEditingController nombreController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController apellidoController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            TextField(
              controller: nombreController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: apellidoController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'apellido',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //print('Nombre: ' + nombreController.text);
                agregarUsuario(
                  nombreController.text, 
                  emailController.text, 
                  apellidoController.text);

              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),

floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
      ),



    );
  }
}