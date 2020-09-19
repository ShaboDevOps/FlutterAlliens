import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerAlign extends StatelessWidget {
  final String name;

  ContainerAlign(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(45),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
      ),
      padding: EdgeInsets.all(30),
      color: Colors.grey,
    );
  }
}
