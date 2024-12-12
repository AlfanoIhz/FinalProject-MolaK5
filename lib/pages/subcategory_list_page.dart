import 'package:flutter/material.dart';

class SubcategoryListPage extends StatelessWidget {
  const SubcategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final subcategories = [
      {'title': 'AC Repair', 'rating': 4.5, 'price': '\$50', 'image': 'assets/ac_repair.png'},
      {'title': 'AC Installation', 'rating': 4.8, 'price': '\$100', 'image': 'assets/ac_installation.png'},
      {'title': 'AC Maintenance', 'rating': 4.7, 'price': '\$80', 'image': 'assets/ac_maintenance.png'},
    ];
 return Scaffold(
      appBar: AppBar(
        title: const Text('AC Service'),
        backgroundColor: const Color(0xFF181A20),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: subcategories.length,
        itemBuilder: (context, index) {
          final subcategory = subcategories[index];
          return Card(
            color: const Color(0xFF242731),
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: Image.asset(subcategory['image'] as String, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(subcategory['title'] as String, style: const TextStyle(color: Colors.white)),
              subtitle: Text('Rating: ${subcategory['rating']} | ${subcategory['price']}', style: const TextStyle(color: Colors.grey)),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
              onTap: () {},
            ),
          );
        },
      ),
      backgroundColor: const Color(0xFF181A20),
    );
  }
}
