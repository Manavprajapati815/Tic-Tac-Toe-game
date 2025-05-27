import 'package:flutter/material.dart';
import 'package:game/home_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart'; // ✅ Make sure the path and filename are correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),

      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),

      themeMode: ThemeMode.dark, // ✅ force dark mode
      home: const HomePage(),
    );
  }
}
