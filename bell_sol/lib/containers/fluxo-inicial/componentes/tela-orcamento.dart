import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-inicial.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class TelaOrcamento extends StatefulWidget {
  @override
  _TelaOrcamentoState createState() => _TelaOrcamentoState();
}

class _TelaOrcamentoState extends State<TelaOrcamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildBody(){

  }

  Widget _buildAppBar(){
    return AppBar(
      backgroundColor: Colors.blue,
      automaticallyImplyLeading: true,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "Assets/LogoBellSolBG.png",
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
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

  Widget _buildDrawer(){

    return Drawer(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            DrawerHeader(
              margin: EdgeInsets.only(left: 4),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  "Assets/LogoBellSolBG.png",
                  height: 120,
                  width: 120,
                  alignment: Alignment.center,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            RaisedButton(
              elevation: 4,
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaInicial()));
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
            ),
            Divider(
              height: 1,
            ),
            RaisedButton(
              elevation: 4,
              splashColor: Colors.yellow,
              child: ListTile(
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
            ),
            Divider(
              height: 1,
            ),
            RaisedButton(
              elevation: 4,
              child: ListTile(
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
            ),
            Divider(
              height: 1,
            ),
            RaisedButton(
              elevation: 4,
              child: ListTile(
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
            ),
            Divider(
              height: 1,
            ),
            RaisedButton(
              elevation: 4,
              child: ListTile(
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
            ),
            Divider(
              height: 1,
            ),
            RaisedButton(
              elevation: 4,
              child: ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
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
            ),
            Divider(
              height: 1,
            ),
            RaisedButton(
              elevation: 4,
              child: ListTile(
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
            ),
            new Container(
              color: Colors.transparent,
              height: 170,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.white24,
                ),
              ),
              child: SizedBox(
                width: 240,
                height: 60,
                child: ListView(
                  itemExtent: 60,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SignInButton.mini(
                      padding: 0,
                      buttonType: ButtonType.youtube,
                      onPressed: () {},
                      btnColor: Colors.blue,
                      btnDisabledColor: Colors.white,
                      elevation: 0,
                      buttonSize: ButtonSize.small,
                    ),
                    SignInButton.mini(
                      padding: 0,
                      buttonType: ButtonType.facebook,
                      onPressed: () {},
                      btnColor: Colors.blue,
                      btnDisabledColor: Colors.white,
                      elevation: 0,
                      buttonSize: ButtonSize.small,
                    ),
                    SignInButton.mini(
                      padding: 0,
                      buttonType: ButtonType.instagram,
                      onPressed: () {},
                      btnColor: Colors.blue,
                      btnDisabledColor: Colors.white,
                      elevation: 0,
                      buttonSize: ButtonSize.small,
                    ),
                    SignInButton.mini(
                      padding: 0,
                      buttonType: ButtonType.mail,
                      onPressed: () {},
                      btnColor: Colors.blue,
                      btnDisabledColor: Colors.white,
                      elevation: 0,
                      buttonSize: ButtonSize.small,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
