import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:tasks/model/custom_task.dart';

class CustomTaskListModel extends ChangeNotifier {
  List<CustomTaskModel> tasks = [];

  void addTaks(CustomTaskModel task) {
    tasks.add(task);
    notifyListeners();
  }

  Future<void> getTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final tasksJson = prefs.getString('tasks') ?? '[]';

    final jsonListTasks = jsonDecode(tasksJson).cast<Map<String, dynamic>>();
    tasks = jsonListTasks
        .map<CustomTaskModel>((m) => CustomTaskModel.fromJson(m))
        .toList();
    notifyListeners();
  }

  Future<void> saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final json = jsonEncode(tasks);
    prefs.setString('tasks', json);
    notifyListeners();
  }
}