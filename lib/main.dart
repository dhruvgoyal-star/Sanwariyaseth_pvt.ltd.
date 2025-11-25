import 'package:flutter/material.dart';

void main() {
  runApp(SanwariyaSethApp());
}

class SanwariyaSethApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sanwariyaseth Pvt. Ltd.",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Sanwariyaseth Pvt. Ltd.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sanwariyaseth Pvt. Ltd."),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        childAspectRatio: 1,
        children: [
          categoryTile(Icons.shopping_cart, "Grocery"),
          categoryTile(Icons.lightbulb, "Home Essential"),
          categoryTile(Icons.favorite, "Puja Items"),
          categoryTile(Icons.shopping_bag, "Clothes"),
          categoryTile(Icons.web, "Website (Shop)"),
          categoryTile(Icons.people, "Social Media"),
        ],
      ),
    );
  }

  Widget categoryTile(IconData icon, String title) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.blue, size: 40),
            SizedBox(height: 10),
            Text(title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
