import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "About Us",
          style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            //margin: new EdgeInsets.all(5.0),
            child: new SizedBox(
              height: 300.0,
              child: new Card(
                child: new Column(
                  children: <Widget>[
                    //new Padding(padding: new EdgeInsets.all(5.0)),
                    new Center(
                      child: new Image.asset(
                        'images/T T T.png',
                        height: 200.0,
                        width: 100.0,
                      ),
                    ),
                    new ListTile(
                      title: new Center(
                        child: new Text(
                          "Tic Tac Toe",
                          style: new TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      subtitle: new Center(
                        child: new Text(
                          "version : 2.2.0",
                          style: new TextStyle(
                            fontSize: 17.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          new Container(
            child: new SizedBox(
              height: 164.0,
              child: new Container(
                margin: new EdgeInsets.all(5.0),
                child: new Card(
                  child: new Column(
                    children: <Widget>[
                      Padding(
                        padding: new EdgeInsets.all(10.0),
                        child: Center(
                          child: new Text(
                            "         Tic Tac Toe (also called XO) app is a small game which can be played just for time pass.\nFor developers..it is just like a HELLO WORLD Program in other Programming Language",
                            style: new TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          new Container(
            child: new SizedBox(
              height: 150.0,
              child: new Container(
                child: new Card(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Text(
                        "Contact Us ",
                        style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      new ListTile(
                        leading: new Image.asset(
                          'images/Developers.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                        title: new Text(
                          'We_developers',
                          style: new TextStyle(
                            color: Colors.green.shade400,
                            fontSize: 17.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      new Row(
                        children: <Widget>[
                          Padding(padding: new EdgeInsets.only(left: 7.0)),
                          new Text(" Email us at :"),
                          new Text(
                            "wegroupmail1@gmail.com",
                            style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
