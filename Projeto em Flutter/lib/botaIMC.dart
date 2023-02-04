import 'package:flutter/material.dart';

class botaoIMC extends StatefulWidget {
  @override
  State<botaoIMC> createState() => _botaoIMCState();
}

class _botaoIMCState extends State<botaoIMC> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (() {
        setState(() {
          Navigator.popAndPushNamed(context, "pagina2");
          double tamanho = 0;
          double peso = 0;
          double resultado = 0;
          int a = 0;
          int p = 0;
          int r = 0;
        });
      }),
      child: Row(children: [
        Icon(
          Icons.description,
          size: 35,
        ),
        Padding(
          padding: EdgeInsets.all(2),
        ),
        Center(
          child: Text(
            "IMC Calculator",
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
    );
  }
}
