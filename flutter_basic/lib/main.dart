import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text("My First App",
          style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.blue,

        ),
        body: Container(

          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Hello! i am inside a container!",
            
                style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
