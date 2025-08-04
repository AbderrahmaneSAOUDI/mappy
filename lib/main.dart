import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mappy/screens/students_list_screen.dart';
import 'package:mappy/screens/students_profile_screen.dart';
import 'package:mappy/screens/students_result_screen.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Students Results',
      theme: getThemeData(),
      home: const StudentsListScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/studentsList': (mContext) => const StudentsListScreen(),
        '/studentsProfile': (mContext) => const StudentsProfileScreen(),
        '/studentsResult': (mContext) => const StudentsResultScreen(),
      },
    );
  }

  ThemeData getThemeData() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      fontFamily: 'GoogleSans',
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 20,
          color: Colors.white,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        foregroundColor: Colors.white,
        elevation: 20,
      ),
    );
  }
}
