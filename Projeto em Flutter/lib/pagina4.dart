import 'package:desafio04_2/constants.dart';
import 'package:desafio04_2/menu.dart';
import 'package:desafio04_2/pagina1.dart';
import 'package:flutter/material.dart';

class pagina4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF035AA6),
      body: conteudopagina4(),
      appBar: AppBar(
        elevation: 0,
        title: Text("Biografia Elvis Presley"),
        actions: [
          Container(
            width: 30,
            child: IconButton(
              padding: EdgeInsets.only(right: 6),
              onPressed: () {
                Navigator.popAndPushNamed(context, "pagina1");
              },
              icon: Icon(Icons.arrow_back),
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

class conteudopagina4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(40)),
        Expanded(
          child: Stack(
            children: [
              SizedBox(
                height: 670,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(30)),
              Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Container(
                              width: 170,
                              child: Text(
                                'Elvis Presley',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              width: 170,
                              child: Text(
                                '   Elvis presley (1935-1977) foi um cantor norte-americano, considerado o maior idolo do rock n roll mundial. Entrou para a historia musical como o rei do rock. Entre suas musicas destacam-se: that s all right, love me tender, it s now or never e kiss me quick. Elvis aron presley nasceu em east tupelo, mississipi, estados unidos no dia 08 de janeiro de 1935.',
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 340,
                              width: 130,
                              margin: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding,
                                  vertical: kDefaultPadding / 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/elvis3.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(4)),
                  Container(
                    width: 320,
                    child: Text(
                      '  Filho de vernon presley e gladys presley, nasceu de um parto dificil, de gemeos, onde seu irmao nao sobreviveu. Em 12 de setembro de 1948, sua familia mudou-se para memphis, tennessee, onde passou sua infancia. Participava do coro da igreja evangelica local e recebeu influencia do blues. Aprendeu a tocar guitarra e participou de concursos de musica em sua cidade. De familia pobre, elvis trabalhou como lanterninha de cinema e como caminhoneiro. Em 1953, concluiu seus estudos secundarios.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
