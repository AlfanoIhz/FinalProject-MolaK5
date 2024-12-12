import 'package:flutter/material.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF181A20),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _TabButton(label: 'Upcoming', selected: true),
                _TabButton(label: 'History', selected: false),
                _TabButton(label: 'Draft', selected: false),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  BookingCard(
                    serviceName: 'AC Installation',
                    referenceCode: '#D-571224',
                    status: 'Confirmed',
                    statusColor: Colors.green,
                    schedule: '8:00-9:00 AM, 09 Dec',
                    serviceProvider: 'Westinghouse',
                  ),
                  SizedBox(height: 16),
                  BookingCard(
                    serviceName: 'Multi Mask Facial',
                    referenceCode: '#D-571224',
                    status: 'Pending',
                    statusColor: Colors.orange,
                    schedule: '8:00-9:00 AM, 09 Dec',
                    serviceProvider: 'Westinghouse',
                  ),
                  SizedBox(height: 16),
                  BookingCard(
                    serviceName: 'Multi Mask Facial',
                    referenceCode: '#D-571224',
                    status: 'Pending',
                    statusColor: Colors.orange,
                    schedule: '8:00-9:00 AM, 09 Dec',
                    serviceProvider: 'Westinghouse',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF181A20),
    );
  }
}

class _TabButton extends StatelessWidget {
  final String label;
  final bool selected;

  const _TabButton({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: selected ? Colors.blue : const Color(0xFF242731),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        label,
        style: TextStyle(color: selected ? Colors.white : Colors.grey),
      ),
    );
  }
}

class BookingCard extends StatelessWidget {
  final String serviceName;
  final String referenceCode;
  final String status;
  final Color statusColor;
  final String schedule;
  final String serviceProvider;

  const BookingCard({super.key, 
    required this.serviceName,
    required this.referenceCode,
    required this.status,
    required this.statusColor,
    required this.schedule,
    required this.serviceProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF242731),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.build, color: Colors.orange, size: 24),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(serviceName, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('Reference Code: $referenceCode', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.schedule, color: Colors.grey, size: 20),
                  const SizedBox(width: 8),
                  Text(schedule, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(status, style: TextStyle(color: statusColor, fontSize: 12)),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.person, color: Colors.grey, size: 20),
                  const SizedBox(width: 8),
                  Text(serviceProvider, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Call', style: TextStyle(color: Colors.white, fontSize: 14)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
