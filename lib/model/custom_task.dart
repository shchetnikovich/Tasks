import 'package:flutter/foundation.dart';

class CustomTaskModel extends ChangeNotifier {
  String text;
  bool completed;

  CustomTaskModel({this.text = '', this.completed = false});

  CustomTaskModel.fromJson(Map<String, dynamic> json)
      : text = json['text'],
        completed = json['completed'];

  Map<String, dynamic> toJson() => {'text': text, 'completed': completed};

  void toggle() {
    completed = !completed;
    notifyListeners();
  }
}