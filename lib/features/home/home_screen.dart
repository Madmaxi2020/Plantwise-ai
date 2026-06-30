import 'package:flutter/material.dart';

import '../../shared/widgets/welcome_header.dart';
import '../../shared/widgets/scan_button.dart';
import '../../shared/widgets/quick_action_card.dart';
import '../../shared/widgets/recent_plant_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeHeader(),

              const SizedBox(height: 32),

              const ScanButton(),

              const SizedBox(height: 32),

              Row(
                children: [
                  QuickActionCard(
                    icon: Icons.camera_alt_outlined,
                    title: "Camera",
                    subtitle: "Take a photo",
                    onTap: () {},
                  ),
                  const SizedBox(width: 16),
                  QuickActionCard(
                    icon: Icons.photo_library_outlined,
                    title: "Gallery",
                    subtitle: "Choose photo",
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(height: 32),

              const Text(
                "Recent Scans",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              const RecentPlantCard(
                plantName: "Aloe Vera",
                status: "Healthy",
                icon: Icons.local_florist,
              ),

              const RecentPlantCard(
                plantName: "Rose",
                status: "Needs Water",
                icon: Icons.local_florist,
              ),

              const RecentPlantCard(
                plantName: "Snake Plant",
                status: "Thriving",
                icon: Icons.eco,
              ),
            ],
          ),
        ),
      ),
    );
  }
}