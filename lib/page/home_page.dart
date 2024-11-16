

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../services/firebase_service.dart';



class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: FutureBuilder(
        future: getUsuarios(), 
        builder: ((context, snapshot){
          if(snapshot.hasData == false){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else{
return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: ((context, index){
              return ListTile(
                title: Text(snapshot.data?[index]['nombre']),
                subtitle: Text(snapshot.data?[index]['apellido']),
                leading: CircleAvatar(
                  child: Text(snapshot.data?[index]['nombre'].substring(0, 1)),
                ),
              );
            })
          );
          }
        })
      ),


    );
  }
}