import 'package:flutter/material.dart';

class GroceryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mainPage("Grocery Section",
        "Buy all your daily grocery items from Sanwariyaseth Pvt. Ltd.");
  }
}

class HomeEssentialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mainPage("Home Essentials",
        "All home use items for daily needs available here.");
  }
}

class PujaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mainPage("Puja Items",
        "Buy Puja Samagri, Dhup, Agarbatti, and Mandir Items.");
  }
}

class ClothesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mainPage("Clothing",
        "Buy Clothing for Men, Women, and Kids at the best price.");
  }
}

class WebsiteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mainPage("Our Website",
        "Sanwariyaseth official website — Coming Soon.");
  }
}

class SocialMediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mainPage("Social Media",
        "Instagram, YouTube, Facebook links — Coming Soon.");
  }
}

Widget mainPage(String title, String sub) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text(title),
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          sub,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
