import 'dart:ui';

import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false, //to remove debug stamp
      theme: new ThemeData(),

      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /* bool invisible=true;                                   //passwordvisibility
    @override
    void initState(TapDownDetails details) {
      invisible = true;
      super.initState();
    }

    void outContact(TapUpDetails details) {
      setState(() {
        invisible=true;
      });
    }

    void inContact(TapDownDetails details) {
      setState(() {
        invisible = false;
      });
    }

    */
    return Scaffold(
      resizeToAvoidBottomPadding: false, //To avoid bottom padding
      appBar: AppBar(
        title: Text("HelpUs.."),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: <Widget>[
          Container(
            //Welecom
            //color: Colors.limeAccent, //BG color

            child: Stack(
              //void space removal of default padding
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 110.0, 0.0, 0.0),
                  child: Center(
                    //For center
                    child: Text(
                      " Login ",
                      textDirection: TextDirection.ltr,

                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.amberAccent), //Color Text
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            //Email
            padding: EdgeInsets.only(left: 10.0),
            //color: Colors.limeAccent,
            child: Column(children: <Widget>[
              TextField(
                //Textfild
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your Email",
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.amber), //To change the border line colo
                    )),
              ),
              SizedBox(height: 20.0), //To provide spacing

              TextFormField(
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Your Password",
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: GestureDetector(
                      //onTapDown: inContact,//call this method when incontact
                      // onTapUp: outContact,//call this method when contact with screen is removed
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Colors.indigo,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                      //To change the border line colo
                    )),
              ),

              SizedBox(height: 10.0),
              Container(
                //Container so need allignment not padding
                alignment: Alignment(1.0, 0.0),
                child: InkWell(
                  //Click textfild
                  onTap: () {},
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                  height: 40.0,
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
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(16.0),
                    shadowColor: Colors.amberAccent,
                    color: Colors.amber,
                    elevation: 8.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}
