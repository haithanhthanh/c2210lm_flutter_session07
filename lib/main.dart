import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqlite_session07_crud/screens/add_student.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQLite CRUD Student',
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STUDENT MANAGEMENT',style: TextStyle(color: Colors.teal,fontSize: 25),),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){}),
      floatingActionButton: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddStudent()));
          },
          icon: const Icon(Icons.add)),
    );
  }
}

