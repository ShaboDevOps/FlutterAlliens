import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginPage/ContainerAlign.dart';
import 'package:loginPage/buttonAllign.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final String name = "ALLIENS";
  final String message = "We programmers, we are allies \n what we do: ";
  final List<String> activity = [
    "Take Problems",
    "Find Solution",
    "Design",
    "Code",
    "Make things posible",
    "Make Others Happy",
    "Sleeping late",
    "Wakeup Early",
    "Smile",
    "No kiss! no Hugs!, Only fixing Bugs"
  ];
  var listindex = 0;

  void method() {
    setState(() {
      if (listindex < activity.length - 1) {
        listindex++;
      } else {
        listindex = 0;
      }
    });
    print("clicked");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
            title: Center(
          child: Text(name),
        )),
        body: Container(
          child: Column(
            children: <Widget>[
              ContainerAlign(message),
              ContainerAlign(activity[listindex]),
              ButtonStyle(method),
            ],
          ),
        ),
      ),
    );
  }
}
