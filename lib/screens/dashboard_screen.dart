import 'package:flutter/material.dart';
import '../widgets/anatomy_card.dart';
import 'modules/upper_limb_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const List<Map<String, dynamic>> modules = [
    {'title': 'Upper Limb', 'icon': Icons.accessibility_new},
    {'title': 'Lower Limb', 'icon': Icons.directions_walk},
    {'title': 'Thorax', 'icon': Icons.monitor_heart},
    {'title': 'Abdomen', 'icon': Icons.restaurant},
    {'title': 'Head & Neck', 'icon': Icons.face},
    {'title': 'Back', 'icon': Icons.airline_seat_flat},
    {'title': 'Pelvis & Perineum', 'icon': Icons.account_balance},
    {'title': 'Histology', 'icon': Icons.science},
    {'title': 'Embryology', 'icon': Icons.child_care},
    {'title': 'Radiology', 'icon': Icons.medical_services},
    {'title': 'Surface Anatomy', 'icon': Icons.person_outline},
    {'title': 'Neuroanatomy', 'icon': Icons.psychology},
  ];

  String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Good Morning ☀️";
    } else if (hour < 17) {
      return "Good Afternoon 🌤️";
    } else {
      return "Good Evening 🌙";
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Anatomy Pro"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getGreeting(),
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              const Text("Welcome back! Continue your anatomy journey."),

              const SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                  hintText: "Search anatomy...",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Continue Learning",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Upper Limb"),
                      SizedBox(height: 10),
                      LinearProgressIndicator(value: 0.65),
                      SizedBox(height: 8),
                      Text("65% Complete"),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 18),

              Card(
                color: Color(0xFFEAF4FF),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "💡 Today's Anatomy Fact",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "The hyoid bone is the only bone in the human body that does not articulate with another bone.",
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Text(
                "Anatomy Modules",
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: modules.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final module = modules[index];

                  return AnatomyCard(
                    title: module['title'],
                    icon: module['icon'],
                    onTap: () {
                      if (module['title'] == 'Upper Limb') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const UpperLimbScreen(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "${module['title']} will be available soon.",
                            ),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
