import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Example',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu',
          style: TextStyle(
            color: Colors.white,
            fontSize:24.0,
            fontFamily:'MomoSignature',
          ),),
        backgroundColor: Colors.deepOrange,
      ),
      body:
      Column(
        children:[
          Card(
            elevation: 5, // Shadow depth
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding( // Add padding inside the card
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset('Hawaiian_Pizza.png', width: 100, height: 100,),
                  SizedBox(width: 20),
                  Text(
                    'Hawaiian Pizza',
                    style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5, // Shadow depth
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding( // Add padding inside the card
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset('Cheese_Pizza.png', width: 100, height: 100,),
                  SizedBox(width: 20),
                  Text(
                    'Cheese Pizza',
                    style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5, // Shadow depth
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding( // Add padding inside the card
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset('Pepperoni_Pizza.png', width: 100, height: 100,),
                  SizedBox(width: 20),
                  Text(
                    'Pepperoni Pizza',
                    style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );



  }
}