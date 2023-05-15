import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shop Muthma',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas Pemrograman Mobile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.orange,
              child: Text(
                'Welcome to Online Shop Nurul Muthmainna',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Tampilan Menu Sederhana Coffee',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductCard(
                    image: 'assets/coffee_1.jpg',
                    title: 'Product 1',
                    price: '50\$',
                  ),
                  ProductCard(
                    image: 'assets/coffee_2.jpg',
                    title: 'Product 2',
                    price: '80\$',
                  ),
                  ProductCard(
                    image: 'assets/coffee.jpg',
                    title: 'Product 3',
                    price: '65\$',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Products',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ProductCard(
                    image: 'assets/coffee.jpg',
                    title: 'Product 4',
                    price: '70\$',
                  ),
                  ProductCard(
                    image: 'assets/coffee_1.jpg',
                    title: 'Product 5',
                    price: '90\$',
                  ),
                  ProductCard(
                    image: 'assets/coffee_2.jpg',
                    title: 'Product 6',
                    price: '55\$',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  ProductCard({required this.image, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            price,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
