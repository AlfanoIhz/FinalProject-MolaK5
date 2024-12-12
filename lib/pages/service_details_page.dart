import 'package:flutter/material.dart';

class ServiceDetailsPage extends StatelessWidget {
  const ServiceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AC Regular Service'),
        backgroundColor: const Color(0xFF181A20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Type of Property', style: TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 8),
            const Row(
              children: [
                _PropertyTypeButton(label: 'Home', selected: true),
                SizedBox(width: 8),
                _PropertyTypeButton(label: 'Office', selected: false),
                SizedBox(width: 8),
                _PropertyTypeButton(label: 'Villa', selected: false),
              ],
            ),
            const SizedBox(height: 16),
            _buildNumberInput('Number of Units', 2),
            const SizedBox(height: 16),
            _buildNumberInput('Number of Bedrooms', 3),
            const SizedBox(height: 16),
            const Text('Description', style: TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 8),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF242731),
                hintText: 'Write your description here...',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
               child: const Text('Book Now'),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF181A20),
    );
  }

  Widget _buildNumberInput(String label, int value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 16)),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.remove, color: Colors.white),
              onPressed: () {},
            ),
            Text('$value', style: const TextStyle(color: Colors.white, fontSize: 16)),
            IconButton(
              icon: const Icon(Icons.add, color: Colors.white),
              onPressed: () {},
              ),
          ],
        ),
      ],
    );
  }
}

class _PropertyTypeButton extends StatelessWidget {
  final String label;
  final bool selected;

  const _PropertyTypeButton({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: selected ? Colors.blue : const Color(0xFF242731),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(label, style: TextStyle(color: selected ? Colors.white : Colors.grey)),
    );
  }
}