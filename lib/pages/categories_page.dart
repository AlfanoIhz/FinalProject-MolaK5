import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'icon': Icons.ac_unit, 'label': 'AC Service'},
      {'icon': Icons.face, 'label': 'Beauty'},
      {'icon': Icons.home_repair_service, 'label': 'Appliance'},
      {'icon': Icons.brush, 'label': 'Painting'},
      {'icon': Icons.cleaning_services, 'label': 'Cleaning'},
      {'icon': Icons.plumbing, 'label': 'Plumbing'},
      {'icon': Icons.electrical_services, 'label': 'Electronics'},
      {'icon': Icons.local_shipping, 'label': 'Shifting'},
      {'icon': Icons.cut, 'label': "Men's Salon"}, // Diperbaiki dengan tanda kutip ganda
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Categories'),
        backgroundColor: const Color(0xFF181A20),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: const Color(0xFF242731),
                child: Icon(category['icon'] as IconData, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(category['label'] as String, style: const TextStyle(color: Colors.white, fontSize: 12)),
            ],
          );
        },
      ),
      backgroundColor: const Color(0xFF181A20),
    );
  }
}
