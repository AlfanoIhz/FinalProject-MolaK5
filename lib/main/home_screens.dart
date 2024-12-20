import 'package:flutter/material.dart';
import 'package:myapp/pages/categories_page.dart';
import 'package:myapp/pages/service_details_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 24, 43),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 35),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello, Steven 👋",
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
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ServiceDetailsPage(),
                        ),
                      );
                    },
                    child: const CategoryIcon(label: 'AC Repair', icon: Icons.ac_unit),
                  ),
                  const CategoryIcon(label: 'Beauty', icon: Icons.brush),
                  const CategoryIcon(label: 'Appliance', icon: Icons.kitchen),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoriesPage(),
                        ),
                      );
                    },
                    child: const CategoryIcon(
                      label: 'See All',
                      icon: Icons.arrow_forward,
                    ),
                  ),                
                ],
              ),
              const SizedBox(height: 24),
              const SectionTitle(title: "Cleaning Services"),
              const SizedBox(height: 16),
              SizedBox(
                height: 150, // You can adjust this height
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // First column
                    Column(
                      children: [
                        // Adjust the image size to fit the container width
                        Container(
                          width: 150, // Adjust this width to control the image size
                          height: 100, // Adjust this height to control the image size
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage("https://img.freepik.com/free-photo/medium-shot-woman-cleaning-home_23-2150453309.jpg"),
                              fit: BoxFit.cover, // Ensures the image fits the container size
                            ),
                          ),
                        ),
                        const Text(
                          "Home Cleaning",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    // Second column
                    Column(
                      children: [
                        // Adjust the image size to fit the container width
                        Container(
                          width: 150, // Adjust this width to control the image size
                          height: 100, // Adjust this height to control the image size
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage("https://s3-alpha-sig.figma.com/img/6026/0909/f55e8cc53662d216cd2a303f48626c2c?Expires=1735516800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XV8DEy4HumZfVHh-xfZ~SJK5qTexmLnpwQRrkNboFp9z1KF1ljcYVgoTrS8gJpniljPT5JE-O2B1935siyro61WmXC~23OQlUzm-mBhYCtxNNPMu~9jUgdIEdlUIUPZagXDrd62zpXbzyWbd4uB~QAAntfjo5VjbYGhKrI4UD77mZbG8~gcB9m76RYi~SqIcDTQqjZuO1hc-bFBQWmwqDdM51KOe-6n4WGZm-2ZMsQGr2lJLvkQZFI0byp9yReorxA2BAQJWjAhGZVR5c58mKBQhXmU6ttUdLoeCuST3YkqvA5s3VVcuVX6B1CHQyuyPiw4wspHbiizy2y7GFQ-yTA__"),
                              fit: BoxFit.cover, // Ensures the image fits the container size
                            ),
                          ),
                        ),
                        const Text(
                          "Home Cleaning",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    Column(
                      children: [
                        // Adjust the image size to fit the container width
                        Container(
                          width: 150, // Adjust this width to control the image size
                          height: 100, // Adjust this height to control the image size
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage("https://img.freepik.com/free-photo/medium-shot-woman-cleaning-home_23-2150453309.jpg"),
                              fit: BoxFit.cover, // Ensures the image fits the container size
                            ),
                          ),
                        ),
                        const Text(
                          "Home Cleaning",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    Column(
                      children: [
                        // Adjust the image size to fit the container width
                        Container(
                          width: 150, // Adjust this width to control the image size
                          height: 100, // Adjust this height to control the image size
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage("https://img.freepik.com/free-photo/medium-shot-woman-cleaning-home_23-2150453309.jpg"),
                              fit: BoxFit.cover, // Ensures the image fits the container size
                            ),
                          ),
                        ),
                        const Text(
                          "Home Cleaning",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
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
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final String label;
  final IconData icon;

  const CategoryIcon({
    super.key,
    required this.label,
    required this.icon,
  });

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

  const SectionTitle({super.key, required this.title});

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

  const ServiceCard({super.key, required this.title, required this.image});

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

  const OfferCard({super.key, required this.title, required this.discount});

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
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward, color: Colors.blue),
        ],
      ),
    );
  }
}
