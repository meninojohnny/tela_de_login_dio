import 'package:flutter/material.dart';

class DatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Perfil:',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Icon(Icons.person, size: 100),
            Text(
              'Nome: João Vior da Silva Pereira',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Data de nascimento: 25.01.2003',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Email: Pereirajoaovitor85@gmail.com',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Curso: Ciencia da computação',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
