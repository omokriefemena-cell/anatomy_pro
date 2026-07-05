import 'package:flutter/material.dart';
import '../../../models/anatomy_item.dart';

class BoneDetailScreen extends StatelessWidget {
  final AnatomyItem bone;

  const BoneDetailScreen({super.key, required this.bone});

  Widget buildSection(String title, String content) {
    if (content.isEmpty) return const SizedBox();

    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(content),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(bone.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.architecture, size: 90, color: Colors.blue),

            const SizedBox(height: 20),

            Text(
              bone.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            Text(
              bone.type,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
            ),

            const SizedBox(height: 25),

            buildSection("Overview", bone.overview),
            buildSection("Features", bone.features),
            buildSection("Attachments", bone.attachments),
            buildSection("Blood Supply", bone.bloodSupply),
            buildSection("Nerve Supply", bone.nerveSupply),
            buildSection("Ossification", bone.ossification),
            buildSection("Clinical Anatomy", bone.clinical),
          ],
        ),
      ),
    );
  }
}
