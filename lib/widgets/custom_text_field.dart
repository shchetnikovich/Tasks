import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:tasks/model/custom_screen.dart';
import 'package:tasks/model/custom_task.dart';
import 'package:tasks/model/custom_task_list.dart';

class CustomTextField extends StatelessWidget {
  final String _hintText = 'Введите текст';
  final TextEditingController textFieldController = TextEditingController();

  CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _paddingSize = MediaQuery.of(context).size.width * 0.12;
    CustomScreenModel _state = Provider.of<CustomScreenModel>(context);
    return Consumer<CustomTaskListModel>(builder: (context, value, child) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: _paddingSize),
        child: TextField(
          focusNode: _state.focusValue,
          autofocus: true,
          controller: textFieldController,
          style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondaryVariant),
          decoration: InputDecoration.collapsed(hintText: _hintText),
          onSubmitted: (newTask) {
            value.addTaks(CustomTaskModel(text: newTask));
            textFieldController.clear();
            value.saveTasks();
            _state.onSaveTapEvent();
          },
        ),
      );
    });
  }
}
