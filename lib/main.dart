import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BookKeepa());


class  BookKeepa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[400],
      ),
      home: InputPage(),
    );
  }
}