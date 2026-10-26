
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  void addCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[50],

        appBar: AppBar(
          title: const Text('Tang Yong Sheng'),
          backgroundColor: Colors.purple[100],
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You have pushed the button this many times:',
              ),

              Text(
                '$count',
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: addCount,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
