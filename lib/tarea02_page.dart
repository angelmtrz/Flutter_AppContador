// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tarea02Page extends StatefulWidget {
  const Tarea02Page({Key? key}) : super(key: key);

  @override
  _Tarea02PageState createState() => _Tarea02PageState();
}

class _Tarea02PageState extends State<Tarea02Page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    void incrementar() {
      setState(() {
        contador++;
      });
    }

    void decrementar() {
      setState(() {
        contador--;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Tarea02 - Contador"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Angel Marthans"),
                accountEmail: Text("angelmtrz@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/1024px-User-avatar.svg.png"),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Valor actual del contador: ",
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              "$contador",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              decrementar();
            },
            child: Icon(
              Icons.arrow_downward,
              size: 40.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              incrementar();
            },
            child: Icon(
              Icons.arrow_upward,
              size: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
