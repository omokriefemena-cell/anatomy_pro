import 'package:flutter/material.dart';

class BonesScreen extends StatelessWidget {
  const BonesScreen({super.key});

  final List<String> bones = const [
    "Clavicle",
    "Scapula",
    "Humerus",
    "Radius",
    "Ulna",
    "Scaphoid",
    "Lunate",
    "Triquetrum",
    "Pisiform",
    "Trapezium",
    "Trapezoid",
    "Capitate",
    "Hamate",
    "Metacarpals",
    "Phalanges",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Upper Limb Bones")),
      body: ListView.builder(
        itemCount: bones.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: const Icon(Icons.architecture),
              title: Text(bones[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Next step
              },
            ),
          );
        },
      ),
    );
  }
}
