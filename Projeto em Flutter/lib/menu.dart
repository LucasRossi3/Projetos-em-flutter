import 'package:flutter/material.dart';

import 'botaIMC.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFF035AA6),
          ),
          currentAccountPicture: Icon(
            Icons.account_circle,
            size: 70,
          ),
          accountName: Text(
            "Lucas Rossi",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text(
            "ljmr.rossi@gmail.com",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: (() {
            Navigator.popAndPushNamed(context, "pagina1");
          }),
          child: Row(children: [
            Icon(
              Icons.home,
              size: 35,
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Center(
              child: Text(
                "Home",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Color(0xFFFCBF1E),
            //onSurface: Colors.white,
            disabledBackgroundColor: Colors.white,
            fixedSize: Size(228, 50),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
        ),
        botaoIMC(),
        Padding(
          padding: EdgeInsets.all(5),
        ),
        TextButton(
          onPressed: (() {
            Navigator.popAndPushNamed(context, "/");
          }),
          child: Row(children: [
            Icon(
              Icons.home,
              size: 35,
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Center(
              child: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Color(0xFFFCBF1E),
            //onSurface: Colors.white,
            disabledBackgroundColor: Colors.white,
            fixedSize: Size(228, 50),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(210),
        ),
        Text(
          "Designed By",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Lucas Rossi",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.copyright,
          size: 10,
        ),
      ],
    );
  }
}
