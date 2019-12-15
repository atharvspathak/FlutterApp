import 'package:flutter/material.dart';

import 'package:loginpage/HomePage.dart';

class HelpNow extends StatefulWidget {
  @override
  HelpNowState createState() => new HelpNowState();
}

class HelpNowState extends State<HelpNow> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Help Now"),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 75.00),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Gender",
                        hintText: "Enter Gender of needy person",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .amber), //To change the border line colo
                        )),
                  ),
                  SizedBox(
                    height: 10.00,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter Name of needy person",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .amber), //To change the border line colo
                        )),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Age",
                        hintText: "Enter Name of needy person",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .amber), //To change the border line colo
                        )),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Gender",
                        hintText: "Enter Gender of needy person",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .amber), //To change the border line colo
                        )),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Problem",
                        hintText: "Enter Problem of needy person",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .amber), //To change the border line colo
                        )),
                  ),
                  SizedBox(
                    height: 20.00,
                  ),
                  Container(
                      height: 40.00,
                      width: 150.00,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.amberAccent,
                        color: Colors.amber,
                        elevation: 8.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
