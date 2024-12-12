import 'package:flutter/material.dart';
import 'package:get/get.dart';



class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: 0,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: const Color(0x0018202e),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined), label: "Home"),
              NavigationDestination(
                icon: Icon(Icons.list_outlined), label: "Bookings"),
              NavigationDestination(
                icon: Icon(Icons.notifications_outlined), label: "Notification"),
              NavigationDestination(
                icon: Icon(Icons.message_outlined), label: "Inbox"),
            ]),
      ),
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final pages = [Container(color: Colors.blue), Container(color: Colors.red), Container(color: Colors.yellow), Container(color: Colors.green)];
}
