import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  const CategoryButton({this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.white,
        ),
        child: GestureDetector(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [Icon(Icons.ac_unit), Text(this.label)],
              )),
        ));
  }
}
