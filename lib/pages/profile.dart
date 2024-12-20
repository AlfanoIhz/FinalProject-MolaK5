import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 22, 33),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 24, 43),
        title: const Text(
              "Profile",
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
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xff18202e),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/steven.jpg"),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Steven",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@stevenSteven",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
              decoration: BoxDecoration(
                color: const Color(0xff18202e),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  profileInfoBuilder("Phone Number", "+ xx xxxx xxxx"),
                  profileInfoBuilder("Email", "@stevenSteven"),
                  profileInfoBuilder("Gender", "Male"),
                  profileInfoBuilder("Date of Birth", "Not set"),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column profileInfoBuilder(String label, String information) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 48, 65, 94),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    child:  Text(
                      information,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              );
  }
}
