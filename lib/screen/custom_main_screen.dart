import 'package:flutter/material.dart';

import 'package:tasks/widgets/custom_appbar.dart';
import 'package:tasks/widgets/custom_task_list.dart';

class CustomMainScreen extends StatelessWidget {
  const CustomMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        body: const CustomTaskList(),
      ),
    );
  }
}