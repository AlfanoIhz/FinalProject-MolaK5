import 'package:flutter/material.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 22, 33),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 24, 43),
        title: const Text(
          "Notifikasi",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            notificationBuilder(
              const Color.fromARGB(255, 0, 89, 255),
              Icons.ac_unit_rounded,
              "AC Service",
              "Your payment for this service is completed",
            ),
            notificationBuilder(
              const Color.fromARGB(255, 24, 159, 65),
              Icons.cleaning_services_outlined,
              "Home Cleaning",
              "Your payment for this service is completed",
            ),
            notificationBuilder(
              const Color.fromARGB(255, 226, 97, 237),
              Icons.brush,
              "Beauty Service",
              "This order is waiting for confirmation",
            ),
            notificationBuilder(
              const Color.fromARGB(255, 24, 159, 65),
              Icons.cleaning_services_outlined,
              "Home Cleaning",
              "Your payment for this service is completed",
            ),
            notificationBuilder(
              const Color.fromARGB(255, 226, 97, 237),
              Icons.brush,
              "Beauty Service",
              "This order is waiting for confirmation",
            ),
          ],
        ),
      ),
    );
  }

  Widget notificationBuilder(
      Color iconBgColor, IconData icon, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 23, 50, 97),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: iconBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
