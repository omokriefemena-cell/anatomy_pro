import 'package:flutter/material.dart';

class HumerusScreen extends StatelessWidget {
  const HumerusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Humerus")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(Icons.architecture, size: 100, color: Colors.blue),
            ),

            const SizedBox(height: 20),

            const Text(
              "Overview",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "The humerus is the longest and largest bone of the upper limb. "
              "It extends from the shoulder to the elbow and articulates "
              "proximally with the scapula and distally with the radius and ulna.",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 25),

            const Text(
              "Quick Facts",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),

            const SizedBox(height: 12),

            Card(
              child: ListTile(
                leading: const Icon(Icons.straighten),
                title: const Text("Bone Type"),
                subtitle: const Text("Long Bone"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.accessibility_new),
                title: const Text("Region"),
                subtitle: const Text("Upper Limb"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.sync_alt),
                title: const Text("Articulates With"),
                subtitle: const Text("Scapula, Radius and Ulna"),
              ),
            ),

            const SizedBox(height: 25),

            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.menu_book),
              label: const Text("Continue Reading"),
            ),
          ],
        ),
      ),
    );
  }
}
