import 'dart:math';

import 'package:desafio04_2/jim.dart';
import 'package:desafio04_2/musicas.dart';
import 'package:desafio04_2/pagina4.dart';
import 'package:desafio04_2/phil.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'pagina1.dart';
import 'pagina2.dart';
import 'pagina3.dart';

double tamanho = 0;
double peso = 0;
double resultado = 0;
int a = 0;
int p = 0;
int r = 0;
String? categoria;

void main() {
  runApp(
    meuapp(),
  );
}

class meuapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => login(),
        "pagina1": (context) => pagina1(),
        "pagina2": (context) => pagina2(),
        "pagina3": (context) => pagina3(),
        "pagina4": (context) => pagina4(),
        "phil": (context) => phil(),
        "jim": (context) => jim(),
        "musicas": (context) => musicas(),
      },
    );
  }
}
