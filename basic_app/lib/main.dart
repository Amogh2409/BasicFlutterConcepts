import 'package:basic_app/SecondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Variable are used to store data

/*

  String name = 'John';
  int age = 24;
  double height = 1.75;
  bool isMale = true;

*/

// Operators

/*

  +, -, *, /, %

  1 + 1 = 2, addition
  2 - 1 = 1, subtraction
  2 * 2 = 4, multiplication
  4 / 2 = 2, division

  5 % 2 = 1, modulus

*/

//Comparison Operators

/*

  ==, !=, >, <, >=, <=

  1 == 1, true
  1 != 1, false
  1 > 1, false
  1 < 1, false
  1 >= 1, true
  1 <= 1, true

*/

// Logical Operators

/* 

1==1 && 2==2, true  (Here both conditions must be true)
1==1 || 2==3, true  (Here any one condition must be true)
!(1==1), false      (Here the condition is false so it will return true)

*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Basic App'),
            actions: [
              IconButton(
                  onPressed: () {
                    print('Search button clicked');
                  },
                  icon: const Icon(Icons.search)),
            ],
          ),
          body: Builder(builder: (context) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This is the First page'),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => SecondRoute()));
                    },
                    child: Text('Go to Second page',
                        style: TextStyle(fontSize: 20,
                        ),))
              ],
            ));
          }),
        ));
  }
}
