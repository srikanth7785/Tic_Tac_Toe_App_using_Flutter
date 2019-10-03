import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Host extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HostState();
  }
}

class HostState extends State<Host> {
  int count = 0;
  int draw = 0;
  String winnerName = "";
  int complete = 0;
  var k = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  var s = ['', '', '', '', '', '', '', '', ''];
  void setkvalue(int a) {
    setState(() {
      k[a] = 1;
      s[a] = count % 2 == 0 ? 'X' : 'O';
      count++;
      if (count > 3) whoIsWinner();
      if (count == 9 && complete == 0) {
        complete = 1;
        draw = 1;
      }
    });
  }

  void whoIsWinner() {
    if (s[0] == s[1] && s[1] == s[2] && k[0] == 1) {
      print("row 1");
      winnerName = (s[0] == 'X') ? 'Player one' : 'Player Two';
      complete = 1;
    } else if (s[3] == s[4] && s[4] == s[5] && k[3] == 1) {
      print("row 2");
      winnerName = (s[3] == 'X') ? 'Player one' : 'Player Two';
      complete = 1;
    } else if (s[6] == s[7] && s[7] == s[8] && k[6] == 1) {
      print("row 3");
      winnerName = (s[6] == 'X') ? 'Player one' : 'Player Two';
      complete = 1;
    } else if (s[0] == s[3] && s[3] == s[6] && k[0] == 1) {
      print("column 1");
      winnerName = (s[0] == 'X') ? 'Player one' : 'Player Two';
      complete = 1;
    } else if (s[1] == s[4] && s[4] == s[7] && k[1] == 1) {
      print("column 2");
      winnerName = (s[1] == 'X') ? 'Player one' : 'Player Two';
      complete = 1;
    } else if (s[2] == s[5] && s[5] == s[8] && k[2] == 1) {
      print("column 3");
      winnerName = (s[2] == 'X') ? 'Player one' : 'Player Two';
      complete = 1;
    } else if (s[0] == s[4] && s[4] == s[8] && k[0] == 1) {
      print("forward Diagonal");
      winnerName = (s[0] == 'X') ? 'Player one' : 'Player Two';
      complete = 1;
    } else if (s[2] == s[4] && s[4] == s[6] && k[2] == 1) {
      print("backward Diagonal");
      winnerName = (s[2] == 'X') ? 'Player one' : 'Player Two';
      complete = 1;
    }
  }

  void showLongToast() {
    Fluttertoast.showToast(
      msg: "You are Over Writting Other Player",
      toastLength: Toast.LENGTH_LONG,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: new AppBar(
        title: new Text(
          "Multiplayer",
          style: new TextStyle(
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontSize: 25.0,
              color: Colors.white70),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        //backgroundColor: Colors.greenAccent,
      ),
      body: new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  //container 0
                  new GestureDetector(
                    onTap: () => (complete == 0)
                        ? (k[0] == 0 ? setkvalue(0) : showLongToast())
                        : new Text(""),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: s[0] == 'X'
                            ? Colors.red
                            : s[0] == 'O' ? Colors.green : Colors.grey,
                      ),
                      height: 150.0,
                      width: 113.0,
                      padding: new EdgeInsets.all(5.0),
                      child: new Center(
                          child: new Text(k[0] == 1 ? s[0] : " ",
                              style: new TextStyle(
                                fontSize: 130.0,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  //container 1
                  new GestureDetector(
                    onTap: () => (complete == 0)
                        ? (k[1] == 0 ? setkvalue(1) : showLongToast())
                        : new Text(""),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: s[1] == 'X'
                            ? Colors.red
                            : s[1] == 'O' ? Colors.green : Colors.grey,
                      ),
                      height: 150.0,
                      width: 113.0,
                      padding: new EdgeInsets.all(5.0),
                      child: new Center(
                          child: new Text(k[1] == 1 ? s[1] : " ",
                              style: new TextStyle(
                                fontSize: 130.0,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  //container 2
                  new GestureDetector(
                    onTap: () => (complete == 0)
                        ? (k[2] == 0 ? setkvalue(2) : showLongToast())
                        : new Text(""),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: s[2] == 'X'
                            ? Colors.red
                            : s[2] == 'O' ? Colors.green : Colors.grey,
                      ),
                      height: 150.0,
                      width: 114.0,
                      padding: new EdgeInsets.all(5.0),
                      child: new Center(
                          child: new Text(k[2] == 1 ? s[2] : " ",
                              style: new TextStyle(
                                fontSize: 130.0,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                ],
              ),
              new Padding(
                padding: EdgeInsets.all(5.0),
              ),
              new Row(
                children: <Widget>[
                  //container 3
                  new GestureDetector(
                    onTap: () => (complete == 0)
                        ? (k[3] == 0 ? setkvalue(3) : showLongToast())
                        : new Text(""),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: s[3] == 'X'
                            ? Colors.red
                            : s[3] == 'O' ? Colors.green : Colors.grey,
                      ),
                      height: 150.0,
                      width: 113.0,
                      padding: new EdgeInsets.all(5.0),
                      child: new Center(
                          child: new Text(k[3] == 1 ? s[3] : " ",
                              style: new TextStyle(
                                fontSize: 130.0,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  //container 4
                  new GestureDetector(
                    onTap: () => (complete == 0)
                        ? (k[4] == 0 ? setkvalue(4) : showLongToast())
                        : new Text(""),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: s[4] == 'X'
                            ? Colors.red
                            : s[4] == 'O' ? Colors.green : Colors.grey,
                      ),
                      height: 150.0,
                      width: 113.0,
                      padding: new EdgeInsets.all(5.0),
                      child: new Center(
                          child: new Text(k[4] == 1 ? s[4] : " ",
                              style: new TextStyle(
                                fontSize: 130.0,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  //conatainer 5
                  new GestureDetector(
                    onTap: () => (complete == 0)
                        ? (k[5] == 0 ? setkvalue(5) : showLongToast())
                        : new Text(""),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: s[5] == 'X'
                            ? Colors.red
                            : s[5] == 'O' ? Colors.green : Colors.grey,
                      ),
                      height: 150.0,
                      width: 114.0,
                      padding: new EdgeInsets.all(5.0),
                      child: new Center(
                          child: new Text(k[5] == 1 ? s[5] : " ",
                              style: new TextStyle(
                                fontSize: 130.0,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                ],
              ),
              new Padding(padding: EdgeInsets.all(5.0)),
              new Row(
                children: <Widget>[
                  //container 6
                  new GestureDetector(
                    onTap: () => (complete == 0)
                        ? (k[6] == 0 ? setkvalue(6) : showLongToast())
                        : new Text(""),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: s[6] == 'X'
                            ? Colors.red
                            : s[6] == 'O' ? Colors.green : Colors.grey,
                      ),
                      height: 150.0,
                      width: 113.0,
                      padding: new EdgeInsets.all(5.0),
                      child: new Center(
                          child: new Text(k[6] == 1 ? s[6] : " ",
                              style: new TextStyle(
                                fontSize: 130.0,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  //container 7
                  new GestureDetector(
                    onTap: () => (complete == 0)
                        ? (k[7] == 0 ? setkvalue(7) : showLongToast())
                        : new Text(""),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: s[7] == 'X'
                            ? Colors.red
                            : s[7] == 'O' ? Colors.green : Colors.grey,
                      ),
                      height: 150.0,
                      width: 113.0,
                      padding: new EdgeInsets.all(5.0),
                      child: new Center(
                          child: new Text(k[7] == 1 ? s[7] : " ",
                              style: new TextStyle(
                                fontSize: 130.0,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  //container 8
                  new GestureDetector(
                    onTap: () => (complete == 0)
                        ? (k[8] == 0 ? setkvalue(8) : showLongToast())
                        : new Text(""),
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: s[8] == 'X'
                            ? Colors.red
                            : s[8] == 'O' ? Colors.green : Colors.grey,
                      ),
                      height: 150.0,
                      width: 114.0,
                      padding: new EdgeInsets.all(5.0),
                      child: new Center(
                          child: new Text(k[8] == 1 ? s[8] : " ",
                              style: new TextStyle(
                                fontSize: 130.0,
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                ],
              ),
              new Padding(
                padding: EdgeInsets.all(20.0),
              ),
              new Center(
                child: draw != 1 && complete == 1
                    ? (new Text("$winnerName is Winner",
                        style: new TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: "$winnerName" == "Player one"
                              ? Colors.red
                              : Colors.greenAccent.shade700,
                        )))
                    : (count == 9
                        ? new Text("Draw Match",
                            style: new TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.greenAccent.shade700,
                            ))
                        : new Text(" ")),
              ),
              new Padding(
                padding: EdgeInsets.all(10.0),
              ),
              new ButtonTheme(
                  height: 40.0,
                  minWidth: 20.0,
                  child: new RaisedButton(
                      child: new Text(
                        count == 9 || complete > 0
                            ? "Play Again"
                            : "Reset Game",
                        style: new TextStyle(
                          fontSize: 19.0,
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.orange,
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Host();
                        }));
                      })),
            ],
          ),
        ],
      ),
    );
  }
}
