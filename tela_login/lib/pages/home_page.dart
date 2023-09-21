import 'package:flutter/material.dart';

import 'date_page.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  int posicaoPage = 0;

  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DatePage()),
                  );
                },
                child: Text('Dados cadastrais'),
              ),
              Divider(),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  posicaoPage = value;
                });
              },
              children: [
                Container(color: Colors.blue),
                Container(color: Colors.grey),
                Container(color: Colors.green),
              ],
            ),
          ),
          BottomNavigationBar(
            onTap: (value) {
              controller.jumpToPage(value);
            },
            currentIndex: posicaoPage,
            items: [
              BottomNavigationBarItem(
                label: 'home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'add',
                icon: Icon(Icons.add),
              ),
              BottomNavigationBarItem(
                label: 'person',
                icon: Icon(Icons.person),
              )
            ],
          ),
        ],
      ),
    );
  }
}
