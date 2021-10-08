import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-orcamento.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(context),
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
                transitionDuration: Duration(milliseconds:250),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    TelaOrcamento(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return new SlideTransition(
                    position: Tween<Offset>(
                        begin: const Offset(0,1), end: Offset.zero)
                        .animate(animation),
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset.zero,
                        end: const Offset(0, 0),
                      ).animate(animation),
                      child: child,
                    ),
                  );
                }),
          );
        },
        label: Text(
          "SOLICITAR ORÇAMENTO",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11),
        ),
        icon: Icon(
          Icons.calculate,
          color: Colors.white,
          size: 18,
        ),
        backgroundColor: Colors.blue,
        elevation: 100,
        isExtended: true,
        highlightElevation: 8,
      ),
    );
  }

  Widget _buildBody(context) {
    return new Container();
  }

  Widget _buildAppBar() {
    return new AppBar(

      title: Text(
        "INÍCIO",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      backgroundColor: Colors.blue,
      automaticallyImplyLeading: true,
      actions: [
        new Image.asset(
          "Assets/LogoBellSolBG.png",
          height: 90,
          width: 90,
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Widget _buildDrawer() {
    return new Drawer(
      elevation:12,
      child: new Container(
        color: Colors.blue,
        child: new Column(
          children: [
            new DrawerHeader(
              margin: const EdgeInsets.only(left: 4),
              child: new Container(
                alignment: Alignment.centerLeft,
                child: new Image.asset(
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
            new RaisedButton(
              elevation: 4,
              child: new ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: new Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20,
                ),
                hoverColor: Colors.yellow,
                title: new Text(
                  'Início',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                dense: true,
              ),
            ),
            Divider(
              height: 1,
            ),
            new RaisedButton(
              elevation: 4,
              splashColor: Colors.yellow,
              child: new ListTile(
                onTap: () {},
                leading: new Icon(
                  Icons.supervised_user_circle_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                title: new Text(
                  'Quem Somos',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                dense: true,
              ),
            ),
            Divider(
              height: 1,
            ),
            new RaisedButton(
              elevation: 4,
              child: new ListTile(
                onTap: () {},
                leading: new Icon(
                  Icons.design_services,
                  color: Colors.white,
                  size: 20,
                ),
                title: new Text(
                  'Serviços',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                dense: true,
              ),
            ),
            Divider(
              height: 1,
            ),
            new RaisedButton(
              elevation: 4,
              child: new ListTile(
                onTap: () {},
                dense: true,
                leading: new Icon(
                  Icons.store,
                  color: Colors.white,
                  size: 20,
                ),
                title: new Text(
                  'Nossa Loja',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            new RaisedButton(
              elevation: 4,
              child: new ListTile(
                onTap: () {},
                dense: true,
                leading: new Icon(
                  Icons.contact_mail,
                  color: Colors.white,
                  size: 18,
                ),
                title: new Text(
                  'Contato',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            new RaisedButton(
              elevation: 4,
              child: new ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds:150),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            TelaOrcamento(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return new SlideTransition(
                            position: Tween<Offset>(
                                begin: const Offset(1,0), end: Offset.zero)
                                .animate(animation),
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: Offset.zero,
                                end: const Offset(0, 0),
                              ).animate(animation),
                              child: child,
                            ),
                          );
                        }),
                  );

                },
                dense: true,
                leading: new Icon(
                  Icons.calculate,
                  color: Colors.white,
                  size: 20,
                ),
                title: new Text(
                  'Solicitar Orçamento',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            new RaisedButton(
              elevation: 4,
              child: new ListTile(
                onTap: () {},
                dense: true,
                leading: new Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 20,
                ),
                title: new Text(
                  "(91) 98806-9086",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            new Container(
              color: Colors.transparent,
              height: 170,
            ),
            new Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.white24,
                ),
              ),
              child: new SizedBox(
                width: 240,
                height: 60,
                child: new ListView(
                  itemExtent: 60,
                  scrollDirection: Axis.horizontal,
                  children: [
                    new SignInButton.mini(
                      padding: 0,
                      buttonType: ButtonType.youtube,
                      onPressed: () {},
                      btnColor: Colors.blue,
                      btnDisabledColor: Colors.white,
                      elevation: 0,
                      buttonSize: ButtonSize.small,
                    ),
                    new SignInButton.mini(
                      padding: 0,
                      buttonType: ButtonType.facebook,
                      onPressed: () {},
                      btnColor: Colors.blue,
                      btnDisabledColor: Colors.white,
                      elevation: 0,
                      buttonSize: ButtonSize.small,
                    ),
                    new SignInButton.mini(
                      padding: 0,
                      buttonType: ButtonType.instagram,
                      onPressed: () {},
                      btnColor: Colors.blue,
                      btnDisabledColor: Colors.white,
                      elevation: 0,
                      buttonSize: ButtonSize.small,
                    ),
                    new SignInButton.mini(
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
