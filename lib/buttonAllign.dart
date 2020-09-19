import 'package:flutter/material.dart';

class ButtonStyle extends StatelessWidget {
   
   final Function method;

   ButtonStyle(this.method);

  @override
  Widget build(BuildContext context) {

    return Container(

      //width: double.infinity,
      color: Colors.grey,
      child: RaisedButton(
        child: Text(
          "SEE MORE",
          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold),
        ),
        onPressed: method,
        hoverColor: Colors.red[400],
      ),
    );
  }
}
