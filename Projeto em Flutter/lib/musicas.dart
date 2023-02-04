import 'package:desafio04_2/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'menu.dart';

class musicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF035AA6),
      body: cabecalhomusicas(),
      appBar: AppBar(
        elevation: 0,
        title: Text("Cartão de visitas"),
        actions: [
          Container(
            width: 30,
            child: IconButton(
              padding: EdgeInsets.only(right: 6),
              onPressed: () {},
              icon: Icon(Icons.fingerprint),
            ),
          )
        ],
        backgroundColor: Color(0xFF035AA6),
      ),
      drawer: Drawer(
        child: menu(),
      ),
    );
  }
}

class cabecalhomusicas extends StatefulWidget {
  @override
  State<cabecalhomusicas> createState() => _cabecalhomusicasState();
}

class _cabecalhomusicasState extends State<cabecalhomusicas> {
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
