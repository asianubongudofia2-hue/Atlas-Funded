import 'package:flutter/material.dart';
import 'features/navigation/main_nav_screen.dart';

class AtlasFundedApp extends StatelessWidget {
  const AtlasFundedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas Funded',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.amber,
      ),
      home: const MainNavScreen(),
    );
  }
}

