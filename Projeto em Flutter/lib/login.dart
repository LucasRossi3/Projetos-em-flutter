import 'package:flutter/material.dart';

class login extends StatelessWidget {
  String? email;
  String? senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_outline,
                    ),
                    labelText: "Email",
                    hintText: "fit@fit.com",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                TextField(
                  onChanged: (value) {
                    senha = value;
                    print(senha);
                  },
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.password,
                    ),
                    labelText: "Senha",
                    hintText: "123",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                TextButton(
                  onPressed: () {
                    if (email == "fit@fit.com" && senha == "123") {
                      print("Login Autorizado");
                      Navigator.popAndPushNamed(context, "pagina1");
                    } else {
                      print("Usuário ou senha incorreto");
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 25),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Color(0xFFFCBF1E),
                    //onSurface: Colors.white,
                    disabledBackgroundColor: Colors.white,
                    fixedSize: Size(120, 50),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
