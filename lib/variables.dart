import 'package:flutter/material.dart';

ValueNotifier<String> titleNotifier = ValueNotifier<String>("Students List");

final List<Map<String, String>> students = [
  {'name': 'Amine Bensaid', 'class': 'Grade 6A'},
  {'name': 'Sara Chikhi', 'class': 'Grade 5B'},
  {'name': 'Youssef Lahlou', 'class': 'Grade 4C'},
  {'name': 'Fatima Zahra', 'class': 'Grade 3A'},
  {'name': 'Omar Bouzid', 'class': 'Grade 6B'},
  {'name': 'Lina Meriem', 'class': 'Grade 5C'},
  {'name': 'Walid Amrani', 'class': 'Grade 4A'},
  {'name': 'Salma Tazi', 'class': 'Grade 3B'},
  {'name': 'Khalid Yacine', 'class': 'Grade 6C'},
  {'name': 'Imane Idrissi', 'class': 'Grade 5A'},
];
