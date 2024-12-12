import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          children: [
            Icon(Icons.menu, color: Colors.white),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CURRENT LOCATION", style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text("15A, James Street", style: TextStyle(fontSize: 16, color: Colors.white)),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text("BRONZE", style: TextStyle(fontSize: 12, color: Colors.orange)),
                Text("0 POINTS", style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
            SizedBox(width: 10),
            Icon(Icons.star, color: Colors.amber),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting
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
              // Search bar
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
              // Categories
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
              // Cleaning Services
              SectionHeader(title: "Cleaning Services", onSeeAll: () {}),
              const Row(
                children: [
                  ServiceCard(
                    title: "Laundry Service",
                    discount: "10% OFF",
                    imagePath: "assets/images/laundry_service.png",
                  ),
                  ServiceCard(
                    title: "Home Cleaning",
                    imagePath: "assets/images/home_cleaning.png",
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Appliance Repair
              SectionHeader(title: "Appliance Repair", onSeeAll: () {}),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Offer Dry Cleaning",
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
            ],
          ),
        ),
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
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        TextButton(onPressed: onSeeAll, child: const Text("See All")),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String? discount;
  final String imagePath;

  const ServiceCard({required this.title, this.discount, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
                child: Text(discount!, style: const TextStyle(color: Colors.white)),
              ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.black.withOpacity(0.5),
              child: Text(title, style: const TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
