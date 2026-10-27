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
      title: 'Restautant Menu',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.orangeAccent),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          PizzaCard(name: 'Vegetable Pizza', imagePath: 'images/pizza.png', description: 'This is a Vegetable Pizza'),
          PizzaCard(name: 'Chicken Pizza', imagePath: 'images/pizza.png', description: 'This is a Chicken Pizza'),
          PizzaCard(name: 'Cheese Pizza', imagePath: 'images/pizza.png', description: 'This is a Cheese Pizza'),
        ],
      ),
    );
  }
}

class PizzaCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;

  const PizzaCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.orange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PizzaDetailPage(
                name: name,
                imagePath: imagePath,
                description: description,
              ),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(imagePath, width: 100, height: 100,),
              SizedBox(width: 20),
              Text(
                name,
                style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PizzaDetailPage extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;

  const PizzaDetailPage({
    super.key,
    required this.name,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Text(description),
        )
    );
  }
}