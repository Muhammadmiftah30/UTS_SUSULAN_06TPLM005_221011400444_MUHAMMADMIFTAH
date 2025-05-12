import 'package:flutter/material.dart';

void main() {
  runApp(ShoesApp());
}

class ShoesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ShoesPage(),
    );
  }
}

class ShoesPage extends StatelessWidget {
  final List<Map<String, String>> shoesList = [
    {
      "name": "Nike SB Zoom Blazer Mid Premium",
      "price": "₹8,795",
      "description": "Men's Casual Shoes",
      "image": "assets/images/shoe1.png",
    },
    {
      "name": "Nike Air Zoom Pegasus",
      "price": "₹9,995",
      "description": "Men's Road Running Shoes",
      "image": "assets/images/shoe2.jpg",
    },
    {
      "name": "Nike ZoomX Vaporfly",
      "price": "₹10,695",
      "description": "Men's Road Racing Shoe",
      "image": "assets/images/shoe3.jpg",
    },
    {
      "name": "Nike Air Force 1 S50",
      "price": "₹6,295",
      "description": "Older Kids' Shoes",
      "image": "assets/images/shoe4.jpg",
    },
    {
      "name": "Nike Waffle One",
      "price": "₹8,295",
      "description": "Men's Shoes",
      "image": "assets/images/shoe5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoes Shop"),
      ),
      body: ListView.builder(
        itemCount: shoesList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: index % 2 == 0 ? Colors.blue.shade100 : Colors.yellow.shade100,
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Image.asset(shoesList[index]["image"]!),
              title: Text(shoesList[index]["name"]!),
              subtitle: Text(shoesList[index]["description"]!),
              trailing: Text(shoesList[index]["price"]!),
            ),
          );
        },
      ),
    );
  }
}
