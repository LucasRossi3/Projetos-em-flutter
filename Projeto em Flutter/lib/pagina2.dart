import 'dart:math';

import 'package:flutter/material.dart';

import 'main.dart';
import 'menu.dart';

class pagina2 extends StatelessWidget {
  const pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: conteudopagina2(),
        ),
      ),
      appBar: AppBar(
        title: Text("IMC Calculator"),
        backgroundColor: Color(0xFF035AA6),
      ),
      drawer: Drawer(
        child: menu(),
      ),
    );
  }
}

class conteudopagina2 extends StatefulWidget {
  const conteudopagina2({super.key});

  @override
  State<conteudopagina2> createState() => _conteudopagina2State();
}

class _conteudopagina2State extends State<conteudopagina2> {
  double alt = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
        ),
        Text(
          "Altura",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.bold),
        ),
        Slider(
          value: tamanho,
          onChanged: (value) {
            tamanho = value;
            a = tamanho.toInt();
            setState(() {});
          },
          min: 0,
          max: 300,
        ),
        Container(
          height: 73,
          width: 297,
          child: Center(
            child: Text(
              "$a cm",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF035AA6)),
        ),
        Padding(
          padding: EdgeInsets.all(20),
        ),
        Slider(
          value: peso,
          onChanged: (value) {
            peso = value;
            p = peso.toInt();
            setState(() {});
          },
          min: 0,
          max: 600,
        ),
        Text(
          "Peso",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.bold),
        ),
        Container(
          height: 73,
          width: 297,
          child: Center(
            child: Text(
              "$p kg",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF035AA6)),
        ),
        Padding(padding: EdgeInsets.all(20)),
        TextButton(
          onPressed: (() {
            Navigator.popAndPushNamed(context, "pagina3");
            alt = tamanho;
            alt = alt / 100;
            resultado = peso / pow(alt, 2);

            resultado = resultado.floorToDouble();
            if (resultado <= 18.5) {
              categoria = "Abaixo do peso";
            } else if (resultado < 24.9) {
              categoria = "Peso ideal. Parabéns!";
            } else if (resultado < 29.9) {
              categoria = "Levemente acima do peso.";
            } else if (resultado < 34.9) {
              categoria = "Obesidade Grau I";
            } else if (resultado < 39.9) {
              categoria = "Obesidade Grau II";
            } else if (resultado > 40) {
              categoria = "Obesidade Grau III";
            } else {
              categoria = "Digite um valor válido!";
            }
            r = resultado.toInt();
            print("$categoria");
          }),
          child: Row(children: [
            Padding(padding: EdgeInsets.all(10)),
            Center(
              child: Text(
                "Calcular IMC",
                style: TextStyle(
                  fontSize: 40,
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
            fixedSize: Size(297, 73),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
