import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State {
  Color corIcon = Color.fromARGB(255, 145, 24, 197);
  IconData iconVisibilityOn = Icons.visibility;
  IconData iconVisibilityOff = Icons.visibility_off;
  bool stateIcon = true;
  bool obscureText = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 8, 46),
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Icon(Icons.person, size: 125, color: Colors.white),
            SizedBox(height: 10),
            Text(
              'Já tem cadastro?',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Faça seu login e mkae the change._',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail, color: corIcon),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: TextField(
                controller: senhaController,
                obscureText: obscureText,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: corIcon),
                  suffix: MaterialButton(
                    onPressed: () {
                      setState(() {
                        stateIcon = stateIcon ? false : true;
                        obscureText = obscureText ? false : true;
                      });
                    },
                    child: Icon(
                      stateIcon ? iconVisibilityOn : iconVisibilityOff,
                      color: corIcon,
                    ),
                  ),
                  hintText: 'Senha',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                if (emailController.text == '' && senhaController.text == '') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Login efetuado com sucesso!',
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                    ),
                  );
                  Future.delayed(Duration(seconds: 2)).then((value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Erro ao efetuar o login',
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                    ),
                  );
                }
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 145, 24, 197),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
