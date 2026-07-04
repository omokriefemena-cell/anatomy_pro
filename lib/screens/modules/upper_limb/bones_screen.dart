import 'package:flutter/material.dart';
import 'humerus_screen.dart';

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
          final bone = bones[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: const Icon(Icons.architecture, color: Colors.blue),
              title: Text(bone),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                if (bone == "Humerus") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HumerusScreen(),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("$bone lesson is coming soon!")),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
