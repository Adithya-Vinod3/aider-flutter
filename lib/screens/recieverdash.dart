import 'package:aider/screens/add_request.dart';
import 'package:aider/screens/prev_requests.dart';
import 'package:aider/screens/Login.dart';
import 'package:flutter/material.dart';
//import 'package:aider/screens/reciever_details.dart';
import 'package:aider/screens/chathome.dart';
import 'package:aider/screens/aboutsection-receiver.dart';

class Recieverdash extends StatefulWidget {
  @override
  _RecieverdashState createState() => _RecieverdashState();
}

class _RecieverdashState extends State<Recieverdash> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   title: Image.asset('images/logo.png',),
          //   backgroundColor: Color(0xFFEDF2F4),
          // ),
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: deviceHeight * 0.30,
                    decoration: BoxDecoration(
                        color: Color(0xFF2B2D42),
                        borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(50.0),
                          bottomRight: const Radius.circular(50.0),
                        )),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30.0,
                        ),
                        Center(
                          child: Text(
                            'Welcome!',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 60.0,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          loggeduser,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color(0xFFFFFFFF)),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              id,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              alignment: Alignment.topRight,
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 30.0),
                        //**************************************add and list button*****************************************
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              //*************************************BUTTONS********************************************
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                color: Color(0xFF2B2D42),
                                //GO TO create request
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => MakeRequest(),
                                    ),
                                  );
                                },
                                padding: EdgeInsets.all(25.0),
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                              ),
                              SizedBox(width: 70.0),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                color: Color(0xFF2B2D42),
                                //GO TO PREVIOUS requests
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => Chathome(),
                                    ),
                                  );
                                },
                                padding: EdgeInsets.all(25.0),

                                child: Icon(
                                  Icons.format_list_bulleted,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                              ),
                            ]),
                        SizedBox(height: 10.0),
                        //**********************************************TEXT********************************* */
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 20.0),
                            Text(
                              'Create Request',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0xFF2B2D42)),
                            ),
                            SizedBox(width: 40.0),
                            Text(
                              'Previous Requests',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0xFF2B2D42)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        //******************************bottom one button section****************************************************
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 50.0),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                color: Color(0xFF2B2D42),
                                //GO TO My Account
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Best(),
                                      ));
                                  //   Navigator.of(context).pushReplacement(
                                  //    MaterialPageRoute(
                                  //       builder: (context) => DonorCreateAcc(),
                                  //   ),
                                  //    );
                                },
                                padding: EdgeInsets.all(25.0),
                                child: Icon(
                                  Icons.account_box,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                              ),
                              SizedBox(width: 50.0),
                            ]),
                        SizedBox(height: 10.0),
                        Row(
                          //******************************************TEXT FOR BOTTOM TWO BUTTONS******************** */
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 40.0),
                            Text(
                              'My Account',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0xFF2B2D42)),
                            ),
                            SizedBox(width: 35.0),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  //*******************************blood donation******************************
                  // ButtonTheme(
                  //   minWidth: 50.0,
                  //   height: 60.0,
                  //   child: FlatButton(
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(20.0)),
                  //       color: Color(0xFF2B2D42),
                  //       onPressed: () {
                  //         print('Pressed blood donation');
                  //       },
                  //       child: Text(
                  //         'Blood Donation',
                  //         style: TextStyle(
                  //           fontFamily: 'Montserrat',
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20.0,
                  //           color: Colors.white,
                  //         ),
                  //       )),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
