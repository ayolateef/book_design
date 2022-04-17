import 'package:flutter/material.dart';
import 'constants.dart';

// ignore: camel_case_types
class iconContent  extends StatelessWidget {

  iconContent({ this.icon, this.label});

    final IconData icon;
    final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: 80.0,
        )
      ],
    );
  }
}
