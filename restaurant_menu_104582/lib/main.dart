
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MenuPage(),
));

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final names = ['Chicken Burger', 'Beef Burger', 'Fish Burger'];
    final images = ['chicken', 'beef', 'fish'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Menu',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: List.generate(3, (i) => Card(
          color: Colors.orange,
          margin: const EdgeInsets.all(8),
          child: ListTile(
            leading: Image.asset(
              'images/${images[i]}.png',
              width: 65,
              height: 65,
              fit: BoxFit.cover,
            ),
            title: Text(names[i],
                style: const TextStyle(color: Colors.white)),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailPage(
                    names[i], images[i]),
              ),
            ),
          ),
        )),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String name, image;
  const DetailPage(this.name, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/$image.png', width: 200),
            const SizedBox(height: 20),
            Text(name, style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
