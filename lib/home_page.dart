import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  TextEditingController numberFirst = new TextEditingController(text: "0");
  TextEditingController numberSecond = new TextEditingController(text: "0");

  var result = 0.0, number1 = 0.0, number2 = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Calculator'),
      ),
      body: new Container(
        padding: EdgeInsets.all(25),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              controller: numberFirst,
              keyboardType: TextInputType.number,
              style: new TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              decoration: new InputDecoration(hintText: "Enter number 1"),
            ),
            new TextField(
              controller: numberSecond,
              style: new TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter number 2"),
            ),
            new Padding(padding: EdgeInsets.only(top: 10)),
            new Text(
              " Result : $result",
              style: new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            new Padding(padding: EdgeInsets.only(top: 10)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  onPressed: add,
                  child: new Text(
                    "+",
                    style: new TextStyle(fontSize: 20),
                  ),
                  color: Colors.greenAccent,
                ),
                new MaterialButton(
                  onPressed: sub,
                  child: new Text(
                    "-",
                    style: new TextStyle(fontSize: 20),
                  ),
                  color: Colors.redAccent,
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 10)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  onPressed: mul,
                  child: new Text(
                    "*",
                    style: new TextStyle(fontSize: 20),
                  ),
                  color: Colors.greenAccent,
                ),
                new MaterialButton(
                  onPressed: divide,
                  child: new Text(
                    "/",
                    style: new TextStyle(fontSize: 20),
                  ),
                  color: Colors.redAccent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  getNumber1() {
    return double.parse(numberFirst.text);
  }

  getNumber2() {
    return double.parse(numberSecond.text);
  }

  void add() {
    setState(() {
      number1 = getNumber1();
      number2 = getNumber2();
      result = (number1 + number2);
    });
  }

  void sub() {
    setState(() {
      number1 = getNumber1();
      number2 = getNumber2();
      result = (number1 - number2);
    });
  }

  void mul() {
    setState(() {
      number1 = getNumber1();
      number2 = getNumber2();
      result = (number1 * number2);
    });
  }

  void divide() {
    setState(() {
      number1 = getNumber1();
      number2 = getNumber2();
      result = number1 / number2;
    });
  }
}
