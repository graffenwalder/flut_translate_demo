import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BTW Check',
      theme: ThemeData(
          canvasColor: kAppContainer,
          appBarTheme: AppBarTheme(color: kAppBarColor),
          scaffoldBackgroundColor: kAppBackGroundColor,
          primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}
