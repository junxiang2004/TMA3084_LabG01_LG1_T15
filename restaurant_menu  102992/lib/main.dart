import 'package:flutter/material.dart';

void main() {
  runApp(const RestaurantMenuApp());
}

class RestaurantMenuApp extends StatelessWidget {
  const RestaurantMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Menu',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Restaurant Menu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            // Vegetable Pizza
            foodCard(
              context,
              'Vegetable Pizza',
              'Fresh vegetable pizza with tomato, onion and cheese.',
            ),

            const SizedBox(height: 10),

            // Chicken Pizza
            foodCard(
              context,
              'Chicken Pizza',
              'Delicious pizza topped with chicken and cheese.',
            ),

            const SizedBox(height: 10),

            // Cheese Pizza
            foodCard(
              context,
              'Cheese Pizza',
              'Classic pizza with lots of melted cheese.',
            ),
          ],
        ),
      ),
    );
  }

  Widget foodCard(
    BuildContext context,
    String foodName,
    String description,
  ) {
    return Card(
      color: Colors.orange,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: InkWell(
        borderRadius: BorderRadius.circular(15),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FoodDetailsPage(
                foodName: foodName,
                description: description,
              ),
            ),
          );
        },

        child: SizedBox(
          height: 100,
          width: double.infinity,

          child: Row(
            children: [

              const SizedBox(width: 20),

              // Pizza image using emoji
              const Text(
                '🍕',
                style: TextStyle(
                  fontSize: 55,
                ),
              ),

              const SizedBox(width: 25),

              Text(
                foodName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// SECOND SCREEN
class FoodDetailsPage extends StatelessWidget {
  final String foodName;
  final String description;

  const FoodDetailsPage({
    super.key,
    required this.foodName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          foodName,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text(
                '🍕',
                style: TextStyle(
                  fontSize: 100,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                foodName,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Menu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}