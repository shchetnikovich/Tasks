import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/custom_screen.dart';
import 'model/custom_task.dart';
import 'model/custom_task_list.dart';

import 'screen/custom_main_screen.dart';

import 'utils/custom_color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<CustomScreenModel>.value(
              value: CustomScreenModel()),
          ChangeNotifierProvider<CustomTaskListModel>.value(
              value: CustomTaskListModel()),
          ChangeNotifierProvider<CustomTaskModel>.value(
              value: CustomTaskModel()),
        ],
        child: const CustomMainScreen(),
      ),
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color(0xFFFFFFFF),
          colorScheme: CustomColorTheme.lightColorScheme),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF1E1F25),
        colorScheme: CustomColorTheme.darkColorScheme,
        // ),
      ),
    );
  }
}