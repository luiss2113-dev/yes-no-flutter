import 'package:flutter/material.dart';
import 'package:yes_no_app/config/app_theme.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme(selectedColor: 5).themeData,
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        home: const ChatScreen());
  }
}
