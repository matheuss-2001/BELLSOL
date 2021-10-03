import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TelaInicialScreen extends StatefulWidget {
  @override
  _TelaInicialScreenState createState() => _TelaInicialScreenState();
}

class _TelaInicialScreenState extends State<TelaInicialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildBody() {
    return Container();
  }

  Widget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      automaticallyImplyLeading: true,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "Assets/LogoBellSol.png",
              height: 70,
              width: 70,
              alignment: Alignment.center,
            ),
            Container(
              width: 70,
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              child: RaisedButton(
                highlightColor: Colors.blue,
                disabledColor: Colors.blue,
                elevation: 20,
                color: Colors.yellow,
                onPressed: () {},
                child: Container(
                  child: Text(
                    "SOLICITAR ORÇAMENTO",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.yellow,
                    size: 28,
                  ),
                  Icon(Icons.email, color: Colors.yellow, size: 28),
                  Icon(Icons.email, color: Colors.yellow, size: 28),
                  Icon(Icons.email, color: Colors.yellow, size: 28),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(
                Icons.home,
                color: Colors.yellow,
                size: 20,
              ),
              hoverColor: Colors.yellow,
              title: Text(
                'Início',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              dense: true,
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.supervised_user_circle_rounded,
                color: Colors.yellow,
                size: 20,
              ),
              title: Text(
                'Quem Somos',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              dense: true,
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.design_services,
                color: Colors.yellow,
                size: 20,
              ),
              title: Text(
                'Serviços',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              dense: true,
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {},
              dense: true,
              leading: Icon(
                Icons.store,
                color: Colors.yellow,
                size: 20,
              ),
              title: Text(
                'Nossa Loja',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {},
              dense: true,
              leading: Icon(
                Icons.contact_mail,
                color: Colors.yellow,
                size: 18,
              ),
              title: Text(
                'Contato',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {},
              dense: true,
              leading: Icon(
                Icons.add_box,
                color: Colors.yellow,
                size: 20,
              ),
              title: Text(
                'Solicitar Orçamento',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Divider(
              height: 1,
            ),
            new Container(
              color: Colors.transparent,
              height: 220,
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {},
              dense: true,
              leading: Icon(
                Icons.call,
                color: Colors.yellow,
                size: 20,
              ),
              title: Text(
                "(91) 98806-9086",
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
