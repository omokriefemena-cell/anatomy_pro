import 'package:flutter/material.dart';

import '../../../models/anatomy_item.dart';
import '../../../widgets/anatomy_header_card.dart';
import '../../../widgets/info_card.dart';
import '../../../widgets/quick_fact_card.dart';

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
            /// Header Image
            AnatomyHeaderCard(
              imagePath: bone.image,
              title: bone.name,
              subtitle: "${bone.type} • ${bone.region}",
            ),

            const SizedBox(height: 20),

            /// Quick Facts
            Row(
              children: [
                Expanded(
                  child: QuickFactCard(
                    icon: Icons.category,
                    title: "Bone Type",
                    value: bone.type,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: QuickFactCard(
                    icon: Icons.place,
                    title: "Region",
                    value: bone.region,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// Detail Cards
            InfoCard(
              icon: Icons.menu_book,
              title: "Overview",
              content: bone.overview,
            ),

            InfoCard(
              icon: Icons.architecture,
              title: "Features",
              content: bone.features,
            ),

            InfoCard(
              icon: Icons.fitness_center,
              title: "Attachments",
              content: bone.attachments,
            ),

            InfoCard(
              icon: Icons.bloodtype,
              title: "Blood Supply",
              content: bone.bloodSupply,
            ),

            InfoCard(
              icon: Icons.bolt,
              title: "Nerve Supply",
              content: bone.nerveSupply,
            ),

            InfoCard(
              icon: Icons.science,
              title: "Ossification",
              content: bone.ossification,
            ),

            InfoCard(
              icon: Icons.local_hospital,
              title: "Clinical Anatomy",
              content: bone.clinical,
            ),
          ],
        ),
      ),
    );
  }
}
