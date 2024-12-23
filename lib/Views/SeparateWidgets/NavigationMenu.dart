import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../Styles/styles.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Card(
      elevation: 4, // Elevation for subtle shadow
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius, // Rounded corners for the card
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding inside the card
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensure the column fits content inside the card
          children: [
            // Body content
            Obx(() => controller.screens[controller.selectedIndex.value]),
            const SizedBox(height: 8), // Add space between body and navigation bar
            // Bottom Navigation Bar
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(ModernStyles.borderRadius.topLeft.x),
                  bottomRight: Radius.circular(ModernStyles.borderRadius.topRight.x),
                ),
                color: const Color.fromARGB(255, 255, 255, 255), // Background color for the navigation bar
              ),
              child: Obx(
                () => NavigationBar(
                  indicatorColor: ModernStyles.activeColor, // Active color for the selected destination
                  height: 60, // Height for the bottom navigation bar
                  elevation: 0,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) => controller.selectedIndex.value = index,
                  destinations: [
                    NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                    NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
                    NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
                    NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
                  ],
                  backgroundColor: Colors.transparent, // Transparent background as it will have a custom color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(child: Text("First Screen"),), // Home screen
    Container(child: Text("Second Screen"),), // Home screen
    Container(child: Text("Third Screen"),), // Home screen
    Container(child: Text("Fourth Screen"),), // Home screen

  ];
}