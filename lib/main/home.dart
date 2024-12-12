import 'package:flutter/material.dart';
import 'package:myapp/pages/categories_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 24, 43),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            "Hello Ashfak 👋",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text(
            "What you are looking for today",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search what you need...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.search, color: Colors.white),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Offer Card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Offer AC Service",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Get 25%",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Grab Offer"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Categories",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(icon: Icons.ac_unit, label: "AC Repair"),
              CategoryCard(icon: Icons.brush, label: "Beauty"),
              CategoryCard(icon: Icons.kitchen, label: "Appliance"),
              Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
          const SizedBox(height: 16),
          SectionHeader(title: "Cleaning Services", onSeeAll: () {}),
          const Row(
            children: [
              Flexible(
                child: ServiceCard(
                  title: "Laundry Service",
                  discount: "10% OFF",
                  imagePath: "assets/images/service1.jpg",
                ),
              ),
              Flexible(
                child: ServiceCard(
                  title: "Home Cleaning",
                  imagePath: "assets/images/service1.jpg",
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SectionHeader(title: "Appliance Repair", onSeeAll: () {}),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryCard({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[800],
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAll;

  const SectionHeader({required this.title, required this.onSeeAll, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CategoriesPage()),
            );
        }, 
        child: const Text("See All")),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String? discount;
  final String imagePath;

  const ServiceCard(
      {required this.title, this.discount, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (discount != null)
            Container(
              padding: const EdgeInsets.all(4),
              color: Colors.red,
              child:
                  Text(discount!, style: const TextStyle(color: Colors.white)),
            ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.black.withOpacity(0.5),
            child: Text(title, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
