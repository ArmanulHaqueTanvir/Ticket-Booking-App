import 'package:flutter/material.dart';
import 'package:ticket_app/utils/App_Styles.dart';
import 'widgets/bottom_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Styles.primaryColor,
      ),
      home: const BottomBar(),
    );
  }
}
