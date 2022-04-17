import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 100.0,
      child: cardChild,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}