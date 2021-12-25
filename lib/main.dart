import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF43B1B7),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFFFED408)),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
