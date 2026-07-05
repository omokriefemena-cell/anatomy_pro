import 'package:flutter/material.dart';

import '../../../models/anatomy_item.dart';
import '../../../services/anatomy_service.dart';
import 'bone_detail_screen.dart';

class BonesScreen extends StatefulWidget {
  const BonesScreen({super.key});

  @override
  State<BonesScreen> createState() => _BonesScreenState();
}

class _BonesScreenState extends State<BonesScreen> {
  final AnatomyService anatomyService = AnatomyService();

  late Future<List<AnatomyItem>> bonesFuture;

  @override
  void initState() {
    super.initState();
    bonesFuture = anatomyService.loadUpperLimbBones();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Upper Limb Bones")),
      body: FutureBuilder<List<AnatomyItem>>(
        future: bonesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No bones found."));
          }

          final bones = snapshot.data!;

          return ListView.builder(
            itemCount: bones.length,
            itemBuilder: (context, index) {
              final bone = bones[index];

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  leading: const Icon(Icons.architecture, color: Colors.blue),
                  title: Text(bone.name),
                  subtitle: Text(bone.type),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BoneDetailScreen(bone: bone),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
