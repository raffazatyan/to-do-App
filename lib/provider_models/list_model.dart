import 'package:application/widgets/first_screen_widgets/first_screen_widgets/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListModel with ChangeNotifier {
  List<TaskModel> _tasks = [];

  TextEditingController textCtrl = TextEditingController();

  List<TaskModel> tasks() {
    return _tasks;
  }

  // List<TaskModel> get getList {
  //   return _tasks;
  // }

  double get completionPercentage {
    int completedTasks = filteredTasks.where((task) => task.isComplate).length;
    return filteredTasks.isEmpty
        ? 0
        : (completedTasks / filteredTasks.length) * 100;
  }

  int button = 1;
  List buttonTextList = ["Work", "Mettings", "Home"];
  String buttonAndIndicatorText = "Work";
  void onButton(int index) {
    button = index;
    notifyListeners();
    if (button == 1) {
      buttonAndIndicatorText = buttonTextList[0];
    }

    if (button == 2) {
      buttonAndIndicatorText = buttonTextList[1];
    }

    if (button == 3) {
      buttonAndIndicatorText = buttonTextList[2];
    }

    notifyListeners();
  }

  int selectedGroup = 1;
  void onButtonPressedGroup(int index) {
    selectedGroup = index;
    notifyListeners();
  }

  void addTask(TaskModel newTask) {
    tasks().add(newTask);
    saveTasks();
    notifyListeners();
  }

  void revomeTask(String id) {
    tasks().removeWhere((task) => task.id == id);
    saveTasks();
    notifyListeners();
  }

  List<TaskModel> filteredTasks = [];

  void returnedModel() {
    filteredTasks.clear();
    for (var i = 0; i < _tasks.length; i++) {
      if (button == 1) {
        filteredTasks =
            _tasks.where((task) => task.categoryWork == true).toList();
      }
      if (button == 2) {
        filteredTasks =
            _tasks.where((task) => task.categoryMeetings == true).toList();
      }
      if (button == 3) {
        filteredTasks =
            _tasks.where((task) => task.categoryHome == true).toList();
      }
    }
    filteredTasks.sort((a, b) => a.date.compareTo(b.date));
  }

  int segmentedTabCurrentIndex = 0;

  void popOnCurentButton() {
    if (segmentedTabCurrentIndex == 0) {
      button = 1;
    }
    if (segmentedTabCurrentIndex == 1) {
      button = 2;
    }
    if (segmentedTabCurrentIndex == 2) {
      button = 3;
    }
  }

  Future<void> clearTextAfterDelay() async {
    await Future.delayed(
      const Duration(milliseconds: 300),
    );
    textCtrl.clear();
    initial = DateTime.now();
    redMessageError = false;
  }

  DateTime initial = DateTime.now();
  void dateFunct(DateTime dataTime) {
    initial = dataTime;
    notifyListeners();
  }

  Future<void> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? tasksJson = prefs.getStringList('tasks');

    if (tasksJson != null) {
      try {
        _tasks =
            tasksJson.map((taskJson) => TaskModel.fromJson(taskJson)).toList();
        notifyListeners();
      } catch (e) {
        print("Ошибка при загрузке задач: $e");
      }
    }
  }

  Future<void> saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> taskList = _tasks.map((task) => task.toJson()).toList();
    await prefs.setStringList('tasks', taskList);
  }

  void toggleTaskComplaction(TaskModel task) {
    final originalIndex = _tasks.indexOf(task);
    if (originalIndex != -1) {
      _tasks[originalIndex].toggleComplation();
      saveTasks();
      notifyListeners();
    }
  }

  Future<bool> isFirstRun() async {
    final prefs = await SharedPreferences.getInstance();
    bool isFirstRun = prefs.getBool('isFirstRun') ?? true;
    if (isFirstRun == true) {
      prefs.setBool("isFirstRun", false);
    }
    return isFirstRun;
  }

  bool redMessageError = false;
  bool redFun() {
    redMessageError = true;
    notifyListeners();
    return redMessageError;
  }

  void errorTextClean() {
    if (redMessageError) {
      redMessageError = false;
    }
    notifyListeners();
  }
}
