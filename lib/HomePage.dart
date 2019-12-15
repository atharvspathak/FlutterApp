import 'package:flutter/material.dart';

import 'HelpNow.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState(); //

}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.black87,
      ),
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/loginbg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Column(
                      children: <Widget>[
                        Container(
                            child: Material(
                                child: Ink.image(
                          image: AssetImage('assets/user.png'),
                          fit: BoxFit.fill,
                          width: 100.00,
                          height: 100.00,
                          child: InkWell(
                            onTap: () {},
                          ),
                        ))),
                        SizedBox(height: 50.0),
                        Container(
                            child: Material(
                                child: Ink.image(
                          image: AssetImage('assets/help_now.png'),
                          fit: BoxFit.cover,
                          width: 100.00,
                          height: 100.00,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => new HelpNow()));
                            },
                          ),
                        ))),
                        SizedBox(height: 50.0),
                        Container(
                            child: Material(
                                child: Ink.image(
                          image: AssetImage('assets/feedback_icon.png'),
                          fit: BoxFit.cover,
                          width: 100.00,
                          height: 100.00,
                          child: InkWell(
                            onTap: () {},
                          ),
                        ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30.00,
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Column(
                      children: <Widget>[
                        Container(
                            child: Material(
                                child: Ink.image(
                          image: AssetImage('assets/donation.png'),
                          fit: BoxFit.cover,
                          width: 100.00,
                          height: 100.00,
                          child: InkWell(
                            onTap: () {},
                          ),
                        ))),
                        SizedBox(height: 50.0),
                        Container(
                            child: Material(
                                child: Ink.image(
                          image: AssetImage('assets/history_icon.png'),
                          fit: BoxFit.cover,
                          width: 100.00,
                          height: 100.00,
                          child: InkWell(
                            onTap: () {},
                          ),
                        ))),
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                            child: Material(
                                child: Ink.image(
                          image: AssetImage('assets/logout.png'),
                          fit: BoxFit.cover,
                          width: 100.00,
                          height: 100.00,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => App()));
                            },
                          ),
                        ))),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
