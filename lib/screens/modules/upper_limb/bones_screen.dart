import 'package:flutter/material.dart';

class BonesScreen extends StatelessWidget {
  const BonesScreen({super.key});

  static const List<String> bones = [
    "Clavicle",
    "Scapula",
    "Humerus",
    "Radius",
    "Ulna",
    "Carpal Bones",
    "Metacarpals",
    "Phalanges",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Upper Limb Bones")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: bones.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.architecture)),
              title: Text(
                bones[index],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Tap to study"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // We'll add detailed pages later.
              },
            ),
          );
        },
      ),
    );
  }
}
