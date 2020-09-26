import 'package:flutter/material.dart';

class Receiver_login extends StatefulWidget {
  @override
  _Receiver_loginState createState() => _Receiver_loginState();
}

class _Receiver_loginState extends State<Receiver_login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F4),
        image: DecorationImage(
          image: AssetImage('assets/image/bg_stripes.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Recipient',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            padding: EdgeInsets.all(10),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "password",
              ),
            ),
          ),
          FlatButton(
            color: Color(0xFF2B2D42),
            onPressed: () {
              print('pressed');
            },
            child: Text(
              'Log In',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          FlatButton(
            color: Color(0xFF2B2D42),
            onPressed: () {
              print('pressed');
            },
            child: Text(
              'Blood Donation',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
