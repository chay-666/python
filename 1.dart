Program 1B: Design a responsive UI that adapts to different screen sizes.

import 'package:flutter/material.dart'; void main() => runApp(MaterialApp(

home: Builder( builder: (context) {

final width = MediaQuery.of(context).size.width;



String screenType; if (width >= 1000) {

screenType = 'Wide (Laptop/Desktop)';

} else if (width >= 600) {

screenType = 'Large Screen (Tablet)';

} else {

screenType = 'Small Screen (Phone)';

}



return Scaffold( body: Center(

child: Text( screenType,

style: TextStyle(fontSize: 24),

),

),

);

},

),

));

 

Program 2A: Explore various Flutter widgets (Text, Image, Container, etc.).

import 'package:flutter/material.dart'; void main() => runApp(

MaterialApp( home: Scaffold(

appBar: AppBar(

title: const Text('Widgets'),

),

body: Center( child: Column(

mainAxisSize: MainAxisSize.min, children: [

const Text( 'Hello',

style: TextStyle(fontSize: 24),

),

Image.network('https://picsum.photos/120'), Container(

padding: const EdgeInsets.all(12), color: Colors.amber,

child: const Text('Inside Container'),

),

],

),

),

),

),

);

 

Program 2B:  Write a program that asks the user how many Fibonacci numbers to generate and then generates them [use functions].



import 'dart:io'; int f(int n) {

if (n <= 1) return n; return f(n - 1) + f(n - 2);

}



void main() {

stdout.write('Enter the number of terms: '); int n = int.parse(stdin.readLineSync()!); for (int i = 0; i < n; i++) {

print(f(i));

}

}

 

Program 3A: Implement different layout structures using Row, Column, and Stack widgets.

import 'package:flutter/material.dart'; void main() => runApp(

MaterialApp( home: Scaffold(

body: Center( child: Column(

mainAxisAlignment: MainAxisAlignment.center, children: [

Text("I am in column"), SizedBox(height: 20), Text("below is a row"), Row(

mainAxisAlignment: MainAxisAlignment.center, children: [

Container(color: Colors.red, width: 50, height: 50),

SizedBox(width: 10),

Container(color: Colors.blue, width: 50, height: 50),

],

),

SizedBox(height: 20), Stack(

children: [

Container(color: Colors.yellow, width: 140, height: 100), Positioned(top: 30, left: 10, child: Text("Stacked on Yellow")), Positioned(bottom: 30, left: 35, child: Text("Box")),

],

),

],

),

),

),

),

);

 

Program 3B: Learn about stateless widgets

import 'package:flutter/material.dart'; void main() => runApp(MaterialApp(

home: Scaffold(

appBar: AppBar(title: Text('Stateless Widget')),

body: Center(child: Text('Hello, I am a Stateless widget!')),

),

));

 

Program 4A:  Set up navigation between different screens using Navigator.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: First())); class First extends StatelessWidget {

@override

Widget build(BuildContext c) => Scaffold( appBar: AppBar(title: Text('HOME')), body: Center(

child: ElevatedButton(

onPressed: () => Navigator.push(c, MaterialPageRoute(builder: (_) => Second()) child: Text('Go to Second Screen'),

),

),

);

}



class Second extends StatelessWidget { @override

Widget build(BuildContext c) => Scaffold( appBar: AppBar(title: Text('Second Screen')), body: Center(

child: ElevatedButton(

onPressed: () => Navigator.pop(c), child: Text('Go Back'),

),

),

);

}

 

Program 4B: Create a program to ask the user for a string and print out whether this string is a palindrome or not.



import 'dart:io'; void main() {

print("Enter a string:");

String s = stdin.readLineSync()!.toLowerCase(); if (s == s.split('').reversed.join()) {

print("Palindrome");

} else {

print("Not Palindrome");

}

}

 

Program 5A: Implement navigation with named routes.

import 'package:flutter/material.dart'; void main() => runApp(MaterialApp(

initialRoute: '/', routes: {

'/': (context) => First(), '/second': (context) => Second(),

},

));



class First extends StatelessWidget { @override

Widget build(BuildContext c) => Scaffold( appBar: AppBar(title: Text('HOME')), body: Center(

child: ElevatedButton(

onPressed: () => Navigator.pushNamed(c, '/second'), child: Text('Go to Second Screen'),

),

),

);

}



class Second extends StatelessWidget { @override

Widget build(BuildContext c) => Scaffold( appBar: AppBar(title: Text('Second Screen')), body: Center(

child: ElevatedButton(

onPressed: () => Navigator.pop(c), child: Text('Go Back'),

),

),

);

}

 

Program 5B: Create a program to ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user

import 'dart:io'; void main() {

stdout.write("Hi, please choose a number: "); int n = int.parse(stdin.readLineSync()!);



if (n % 2 == 0) {

print("Chosen number is even");

} else {

print("Chosen number is odd");

}

}

 

Program 6A: Apply styling using themes and custom styles.

import 'package:flutter/material.dart';



void main() {

  runApp(

    MaterialApp(

      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),

      home: Scaffold(

        backgroundColor: Colors.grey[50],

        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Text(

                'Welcome to MyApp',

                style: TextStyle(

                  fontSize: 24,

                  fontWeight: FontWeight.bold,

                  color: Colors.blue,

                ),

              ),

              SizedBox(height: 30),

              ElevatedButton(

                onPressed: () {},

                child: Text('Get Started'),

              ),

            ],

          ),

        ),

      ),

    ),

  );

}



Program 6B: ) Create a program that asks the user for a number and then prints out a list of all the divisors of that number.



import 'dart:io'; void main() {

stdout.write("Please choose a number: "); int n = int.parse(stdin.readLineSync()!);



for (var i = 1; i <= n; i++) { if (n % i == 0) {

print(i);

}

}

}

 









 

Program 7B: Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.

import 'dart:io'; void main() {

stdout.write("What's your name? "); String name = stdin.readLineSync()!;



print("Hi, $name! What is your age?");

int age = int.parse(stdin.readLineSync()!);



print("$name, You have ${100 - age} years to be 100");

}





 

Program 7A: Add animations to UI elements using Flutter's animation framework.



import 'package:flutter/material.dart';



void main() => runApp(AnimApp());



class AnimApp extends StatefulWidget {

  @override

  _AnimAppState createState() => _AnimAppState();

}



class _AnimAppState extends State<AnimApp> {

  double size = 100;

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('Simple Animation')),

        body: Center(

          child: AnimatedContainer(

            duration: Duration(seconds: 1),

            width: size,

            height: size,

            color: Colors.blue,

            child: TextButton(

              onPressed: () {

                setState(() {

                  size = size == 100 ? 200 : 100;

                });

              },

              child: Text('Animate', style: TextStyle(color: Colors.white)),

            ),

          ),

        ),

      ),

    );

  }

}







