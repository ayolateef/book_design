
import 'package:flutter/material.dart';

class HorizontalView extends StatelessWidget {

  HorizontalView({this.button});

final ElevatedButton button;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
      ),
      onPressed: (){

      },
    );

  }
}

