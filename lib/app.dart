import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/home/home_screen.dart';

class PlantWiseApp extends StatelessWidget {
  const PlantWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlantWise AI',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,

      home: const HomeScreen(),
    );
  }
}