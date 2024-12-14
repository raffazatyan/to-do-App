import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TaskModel with ChangeNotifier {
  String tittle;
  bool isComplate;
  bool showDeleteIcon;
  bool categoryWork;
  bool categoryMeetings;
  bool categoryHome;
  DateTime date;
  final String id;

  TaskModel({
    required this.tittle,
    required this.date,
    this.isComplate = false,
    this.showDeleteIcon = false,
    this.categoryWork = true,
    this.categoryMeetings = false,
    this.categoryHome = false,
    String? id,
  }) : id = id ?? const Uuid().v4();

  // Преобразование в JSON
  String toJson() {
    return json.encode({
      'id': id,
      'tittle': tittle,
      'date': date.toIso8601String(),
      'isComplate': isComplate,
      'showDeleteIcon': showDeleteIcon,
      'categoryHome': categoryHome,
      'categoryWork': categoryWork,
      'categoryMeetings': categoryMeetings,
    });
  }

  static TaskModel fromJson(String jsonString) {
    try {
      final jsonData = json.decode(jsonString); // Декодируем строку в Map

      return TaskModel(
        id: jsonData['id'],
        tittle: jsonData['tittle'],
        date: DateTime.parse(jsonData['date']),
        isComplate: jsonData['isComplate'],
        showDeleteIcon: jsonData['showDeleteIcon'],
        categoryHome: jsonData['categoryHome'],
        categoryWork: jsonData['categoryWork'],
        categoryMeetings: jsonData['categoryMeetings'],
      );
    } catch (e) {
      print("Ошибка при парсинге JSON: $e");
      rethrow; // Перебрасываем ошибку дальше, если нужно
    }
  }

  void toggleComplation() {
    isComplate = !isComplate;
    showDeleteIcon = !showDeleteIcon;
    notifyListeners();
  }
}
