import 'package:flutter/material.dart';
import 'package:ioasys_api_lesson/modules/todo/todo_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ioasysThemeData,
      home: const TodoPage(),
    );
  }
}

final ThemeData ioasysThemeData = ThemeData(
  fontFamily: 'Poppins',
  primarySwatch: Colors.pink,
  iconTheme: const IconThemeData(color: Color(0xFFC1007E)),
  listTileTheme: const ListTileThemeData(iconColor: Color(0xFFC1007E)),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: const Color(0xFFC1007E),
    secondary: const Color(0xFF9e9e9e),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Color(0xFFC1007E)),
  ),
  toggleableActiveColor: const Color(0xFFC1007E),
);
