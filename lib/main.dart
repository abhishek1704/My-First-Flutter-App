import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: myApp(),
  ));
}

class myApp extends StatefulWidget {

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  var num1 = '',result = '';
  bool isAdded = false;

  var n1,n2;

  var num2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: Text('Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Expanded(
            child: Container(
              color: Colors.amberAccent[400],
              child: TextField(
                  onChanged: (text) {
                    num1 = text;
                    n1 = int.parse(num1);
                    print(num1);
                  },
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                  textAlign: TextAlign.center),
              padding: EdgeInsets.all(70),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pinkAccent[100],
              child: TextField(
                  onChanged: (text) {
                    num2 = text;
                    n2 = int.parse(num2);
                    print(num2);
                  },
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                  textAlign: TextAlign.center),
              padding: EdgeInsets.all(70),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue[200],
              child: isAdded ? Text(result,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
                textAlign: TextAlign.center,
                ) : Text(" "),
              padding: EdgeInsets.all(70),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    color: Colors.green[200],
                    child: Text('+',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    textAlign: TextAlign.center,
                    ),
                  onPressed: () {
                      n1 += n2;
                      result = n1.toString();
                      print(n1);
                      setState(() {
                        isAdded = true;
                        num1 = '';
                        num2 = '';
                      });
                  },
                  padding: EdgeInsets.all(20),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.green[200],
                  child: Text('-',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    n1 -= n2;
                    result = n1.toString();
                    print(n1);
                    setState(() {
                      isAdded = true;
                      num1 = '';
                      num2 = '';
                    });
                  },
                  padding: EdgeInsets.all(20),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.green[200],
                  child: Text('x',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    n1 *= n2;
                    result = n1.toString();
                    print(n1);
                    setState(() {
                      isAdded = true;
                      num1 = '';
                      num2 = '';
                    });
                  },
                  padding: EdgeInsets.all(20),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.green[200],
                  child: Text('/',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    n1 /= n2;
                    result = n1.toString();
                    print(n1);
                    setState(() {
                      isAdded = true;
                      num1 = '';
                      num2 = '';
                    });
                  },
                  padding: EdgeInsets.all(20),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
