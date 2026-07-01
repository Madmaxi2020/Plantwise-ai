import 'package:flutter/material.dart';
import 'dart:io';

import '../../providers/image_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/image_picker_service.dart';

import '../../shared/widgets/welcome_header.dart';
import '../../shared/widgets/scan_button.dart';
import '../../shared/widgets/quick_action_card.dart';
import '../../shared/widgets/recent_plant_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImage = ref.watch(selectedImageProvider);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeHeader(),

              const SizedBox(height: 32),

              selectedImage == null
                  ? const ScanButton()
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.file(
                        selectedImage,
                        height: 300,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),

              const SizedBox(height: 32),

              Row(
                children: [
                  QuickActionCard(
                    icon: Icons.camera_alt_outlined,
                    title: "Camera",
                    subtitle: "Take a photo",
                    onTap: () async {
                      final imageService = ImagePickerService();

                      final image = await imageService.pickFromCamera();

                      if (image != null) {
                        ref
                            .read(selectedImageProvider.notifier)
                            .setImage(File(image.path));
                      }
                    },
                  ),
                  const SizedBox(width: 16),
                  QuickActionCard(
                    icon: Icons.photo_library_outlined,
                    title: "Gallery",
                    subtitle: "Choose photo",
                    onTap: () async {
                      final imageService = ImagePickerService();

                      final image = await imageService.pickFromGallery();

                      if (image != null) {
                        ref
                            .read(selectedImageProvider.notifier)
                            .setImage(File(image.path));
                      }
                    },
                  ),
                ],
              ),

              const SizedBox(height: 32),

              const Text(
                "Recent Scans",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
