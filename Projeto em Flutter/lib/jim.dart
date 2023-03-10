import 'package:desafio04_2/constants.dart';
import 'package:desafio04_2/menu.dart';
import 'package:desafio04_2/pagina1.dart';
import 'package:flutter/material.dart';

class jim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF035AA6),
      body: conteudojim(),
      appBar: AppBar(
        elevation: 0,
        title: Text("Biografia Phil Collins"),
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

class conteudojim extends StatelessWidget {
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
                                'Jim Croce',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              width: 170,
                              child: Text(
                                '  Jim Croce (1943-1973) era um m??sico e compositor americano conhecido por suas baladas e m??sicas engra??adas. Ele nasceu em Filad??lfia, Pensilv??nia e come??ou sua carreira musical na d??cada de 1960. Seus sucessos incluem ???Time in a Bottle???, ???Bad, Bad Leroy Brown??? e ???Operator (That???s Not the Way It Feels)???. Infelizmente, Croce morreu em um acidente de avi??o aos 30 anos de idade, mas sua m??sica continua popular at?? hoje.',
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
                                  image: AssetImage("assets/images/jim.png"),
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
                      '  Jim Croce come??ou a tocar guitarra e compor m??sicas cedo. Depois de se formar na universidade, ele viajou pelo pa??s como m??sico de rua e tamb??m trabalhou como arquiteto. Croce ganhou fama com suas letras reflexivas e engra??adas, bem como com sua habilidade de tocar v??rios instrumentos, incluindo guitarra, piano e banjo. Em 1973, Croce estava no auge de sua carreira quando morreu em um acidente de avi??o no estado da Louisiana. Apesar de sua carreira curta, ele deixou um legado duradouro na m??sica popular e ?? ainda considerado um dos maiores compositores de m??sica da d??cada de 1970. Sua m??sica foi influente para muitos m??sicos e continua sendo apreciada por f??s de todas as idades.',
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
