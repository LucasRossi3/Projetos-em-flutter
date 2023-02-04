import 'package:flutter/material.dart';

import 'main.dart';
import 'menu.dart';

class pagina3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: conteudopagina3(),
        ),
      ),
      appBar: AppBar(
        title: Text("IMC Resultado"),
        backgroundColor: Color(0xFF035AA6),
      ),
      drawer: Drawer(
        child: menu(),
      ),
    );
  }
}

class conteudopagina3 extends StatefulWidget {
  @override
  State<conteudopagina3> createState() => _conteudopagina3State();
}

class _conteudopagina3State extends State<conteudopagina3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            "$r",
            style: TextStyle(color: Colors.black, fontSize: 60),
          ),
        ),
        Padding(padding: EdgeInsets.all(20)),
        Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                "$categoria",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
          ]),
        ),
      ]),
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFFCBF1E),
      ),
    );
  }
}
