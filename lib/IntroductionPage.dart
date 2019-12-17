import 'package:flutter/material.dart';
import 'package:share/share.dart';
import './TwoPlayers.dart';
import './OnePlayer.dart';
import './AboutUs.dart';




class IntroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroPageState();
  }
}

class IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.info,color: Colors.white70,),
             onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AboutPage();
                          })),
          ),
          new IconButton(
            icon: new Icon(Icons.share,color: Colors.white70,),
             onPressed: () => Share.share("Feeling Bored..? Try Playing This Game\n https://play.google.com/store/apps/details?id=com.srikanth7785.tictactoe"),
          ),
        ],
        title: new Text(
          "Tic Tac Toe",
          style: new TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
            color: Colors.white70,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: new ListView(
        children: <Widget>[
          new Center(
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'images/T T T.png',
                  height: 350.0,
                  width: 250.0,
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                new Center(
                  child: new ButtonTheme(
                    height: 40.0,
                    minWidth: 20.0,
                    child: new RaisedButton(
                        child: new Text(
                          "Multiplayer",
                          style: new TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.green.shade900,
                        onPressed: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Host();
                            }))),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                new Center(
                  child: new ButtonTheme(
                    height: 40.0,
                    minWidth: 20.0,
                    child: new RaisedButton(
                      child: new Text(
                        " Computer  ",
                        style: new TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.green.shade900,
                      onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Computer();
                          })),
                    ),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
