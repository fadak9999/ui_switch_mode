import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_switch_mode/mode/ModeTheme.dart';
import 'package:ui_switch_mode/pages/home.dart';
import 'package:ui_switch_mode/mode/provider/ModeProvider.dart';

void main() {
  runApp(
      //
      ChangeNotifierProvider(
          create: (context) => ModeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //
      theme: Provider.of<ModeProvider>(context).lightModeEnable
          ? ModeTheme.lightMode
          : ModeTheme.darkMode,

      //
      home: const HomePage(),
    );
  }
}
