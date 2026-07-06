import 'package:flutter/material.dart';

import '../../../models/anatomy_item.dart';
import '../../../widgets/anatomy_section.dart';

class BoneDetailScreen extends StatelessWidget {
  final AnatomyItem bone;

  const BoneDetailScreen({super.key, required this.bone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(bone.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade700, Colors.blue.shade400],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bone.name,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "${bone.type} • ${bone.region}",
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            AnatomySection(title: "Overview", content: bone.overview),
            AnatomySection(title: "Features", content: bone.features),
            AnatomySection(title: "Attachments", content: bone.attachments),
            AnatomySection(title: "Blood Supply", content: bone.bloodSupply),
            AnatomySection(title: "Nerve Supply", content: bone.nerveSupply),
            AnatomySection(title: "Ossification", content: bone.ossification),
            AnatomySection(
              title: "Clinical Importance",
              content: bone.clinical,
            ),
          ],
        ),
      ),
    );
  }
}
