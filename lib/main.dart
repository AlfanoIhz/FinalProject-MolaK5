import 'package:flutter/material.dart';
import 'package:myapp/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.home, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello, bro 👋",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "What you are looking for today",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search what you need...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CategoryIcon(label: 'AC Repair', icon: Icons.ac_unit),
                  CategoryIcon(label: 'Beauty', icon: Icons.brush),
                  CategoryIcon(label: 'Appliance', icon: Icons.kitchen),
                  CategoryIcon(label: 'See All', icon: Icons.arrow_forward),
                ],
              ),
              const SizedBox(height: 24),
              const SectionTitle(title: "Cleaning Services"),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ServiceCard(
                    title: "Home Cleaning",
                    image: 'https://via.placeholder.com/150',
                  ),
                  ServiceCard(
                    title: "Carpet Cleaning",
                    image: 'https://via.placeholder.com/150',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const OfferCard(
                title: "Offer AC Service",
                discount: "Get 25%",
              ),
              const SizedBox(height: 16),
              const OfferCard(
                title: "Offer Dry Cleaning",
                discount: "Get 25%",
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final String label;
  final IconData icon;

  const CategoryIcon({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 30,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "See All",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String image;

  const ServiceCard({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            image,
            width: 150,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class OfferCard extends StatelessWidget {
  final String title;
  final String discount;

  const OfferCard({Key? key, required this.title, required this.discount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                discount,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward, color: Colors.blue),
        ],
      ),
    );
  }
}
