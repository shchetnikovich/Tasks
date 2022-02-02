import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tasks/model/custom_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _buttonSize = MediaQuery.of(context).size.width * 0.11;
    CustomScreenModel _state = Provider.of<CustomScreenModel>(context);
    return GestureDetector(
      onTap: () {
        _state.onButtonTapEvent();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).colorScheme.primaryVariant,
        ),
        width: _buttonSize,
        height: _buttonSize,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.secondaryVariant,
        ),
      ),
    );
  }
}