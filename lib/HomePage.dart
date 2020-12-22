import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");
  var num1, num2, res = 0;
  void addtion() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 - num2;
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 * num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = (num1 ~/ num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        new TextEditingController().clear();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Calculator App"),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  t1.clear();
                  t2.clear();
                  res = 0;                
                });
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output: $res",
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 20.0,
              ),
            ),
            Container(
              width: 250.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter 1st Number",
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: t1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Container(
              width: 250.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter 2nd Number",
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: t2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    addtion();
                  },
                  child: Text("+"),
                ),
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    subtraction();
                  },
                  child: Text("-"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    multiplication();
                  },
                  child: Text("*"),
                ),
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    division();
                  },
                  child: Text("/"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
