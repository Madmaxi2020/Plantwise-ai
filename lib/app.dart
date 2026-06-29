import 'package:flutter/material.dart';

class PlantWiseApp extends StatelessWidget {
  const PlantWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlantWise AI',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF8FAF7),
      ),

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🌿 PlantWise AI"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            const SizedBox(height: 30),

            const Icon(
              Icons.eco,
              size: 90,
              color: Colors.green,
            ),

            const SizedBox(height: 20),

            const Text(
              "Identify any plant instantly",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Take a photo or choose one from your gallery.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 40),

            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
              label: const Text("Identify Plant"),
            ),

            const SizedBox(height: 16),

            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.photo_library),
              label: const Text("Choose From Gallery"),
            ),
          ],
        ),
      ),
    );
  }
}