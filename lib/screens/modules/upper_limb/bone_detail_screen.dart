import 'package:flutter/material.dart';

import '../../../models/anatomy_item.dart';
import '../../../widgets/section_card.dart';

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
          children: [
            SectionCard(
              title: "Overview",
              content: bone.overview,
              icon: Icons.menu_book,
            ),

            SectionCard(
              title: "Features",
              content: bone.features,
              icon: Icons.architecture,
            ),

            SectionCard(
              title: "Attachments",
              content: bone.attachments,
              icon: Icons.fitness_center,
            ),

            SectionCard(
              title: "Blood Supply",
              content: bone.bloodSupply,
              icon: Icons.favorite,
            ),

            SectionCard(
              title: "Nerve Supply",
              content: bone.nerveSupply,
              icon: Icons.bolt,
            ),

            SectionCard(
              title: "Ossification",
              content: bone.ossification,
              icon: Icons.science,
            ),

            SectionCard(
              title: "Clinical Anatomy",
              content: bone.clinical,
              icon: Icons.local_hospital,
            ),
          ],
        ),
      ),
    );
  }
}
