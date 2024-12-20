import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'icon': Icons.ac_unit, 'label': 'AC Service', 'color': Colors.blue},
      {'icon': Icons.face, 'label': 'Beauty', 'color': Colors.pink},
      {'icon': Icons.home_repair_service, 'label': 'Appliance', 'color': Colors.green},
      {'icon': Icons.brush, 'label': 'Painting', 'color': Colors.orange},
      {'icon': Icons.cleaning_services, 'label': 'Cleaning', 'color': Colors.cyan},
      {'icon': Icons.plumbing, 'label': 'Plumbing', 'color': Colors.red},
      {'icon': Icons.electrical_services, 'label': 'Electronics', 'color': Colors.yellow},
      {'icon': Icons.local_shipping, 'label': 'Shifting', 'color': Colors.purple},
      {'icon': Icons.cut, 'label': "Men's Salon", 'color': Colors.teal},
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 22, 33),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 15, 24, 43),
            hintText: 'Search Category',
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
              borderSide: const BorderSide(
                color: Colors.white, // Border color
                width: 2, // Border thickness
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 15, 24, 43),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 35, left: 16, right: 16),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 15, 24, 43),
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 16, // Horizontal space between items
            mainAxisSpacing: 40, // Vertical space between rows
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Column(
              children: [
                CircleAvatar(
                  radius: 40, // Increased the radius of the circle
                  backgroundColor: category['color'] as Color, // Unique background color for each category
                  child: Icon(
                    category['icon'] as IconData,
                    color: Colors.white,
                    size: 45, // Increased the size of the icon
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  category['label'] as String,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
