import 'package:flutter/material.dart';
import 'upper_limb/bones_screen.dart';

class UpperLimbScreen extends StatelessWidget {
  const UpperLimbScreen({super.key});

  final List<Map<String, dynamic>> topics = const [
    {
      'title': 'Bones',
      'icon': Icons.architecture,
      'subtitle': 'Clavicle, Scapula, Humerus...',
    },
    {
      'title': 'Muscles',
      'icon': Icons.fitness_center,
      'subtitle': 'Compartments & Functions',
    },
    {
      'title': 'Joints',
      'icon': Icons.sync_alt,
      'subtitle': 'Shoulder, Elbow & Wrist',
    },
    {'title': 'Nerves', 'icon': Icons.bolt, 'subtitle': 'Brachial Plexus'},
    {
      'title': 'Blood Supply',
      'icon': Icons.favorite,
      'subtitle': 'Arteries & Veins',
    },
    {
      'title': 'Lymphatics',
      'icon': Icons.bubble_chart,
      'subtitle': 'Drainage Pathways',
    },
    {
      'title': 'Clinical Anatomy',
      'icon': Icons.local_hospital,
      'subtitle': 'Common Injuries',
    },
    {'title': 'Quiz', 'icon': Icons.quiz, 'subtitle': 'Test Yourself'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Upper Limb")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: topics.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            final topic = topics[index];

            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(18),
                onTap: () {
                  if (topic['title'] == 'Bones') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BonesScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "${topic['title']} module is coming soon!",
                        ),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(topic['icon'], size: 45, color: Colors.blue),
                      const SizedBox(height: 12),
                      Text(
                        topic['title'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        topic['subtitle'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
