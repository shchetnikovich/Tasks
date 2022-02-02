import 'package:flutter/material.dart';

class CustomScreenModel extends ChangeNotifier {
  bool _showTextForm = false;
  bool _textFieldStatus = false;

  final FocusNode _currentFocus = FocusNode();

  bool get showValue => _showTextForm;
  FocusNode get focusValue => _currentFocus;

  void onButtonTapEvent() {
    if (_textFieldStatus == false) {
      _showTextForm = !_showTextForm;
      _textFieldStatus = !_textFieldStatus;
      notifyListeners();
    } else {
      return;
    }
  }

  void onSaveTapEvent() {
    _currentFocus.unfocus();
    _textFieldStatus = false;
    _showTextForm = false;
    notifyListeners();
  }
}
