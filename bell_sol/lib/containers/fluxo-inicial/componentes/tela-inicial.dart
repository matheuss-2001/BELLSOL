import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-contato.dart';
import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-loja.dart';
import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-orcamento.dart';
import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-quem-somos.dart';
import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-servicos.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:z_components/components/z-perfil-item.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int activeIndex = 0;
  final listImages = ["Assets/carroEletrico.jpg", "Assets/painelSolar.jpg"];

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
                transitionDuration: Duration(milliseconds: 250),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    TelaOrcamento(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return new SlideTransition(
                    position: Tween<Offset>(
                            begin: const Offset(0, 1), end: Offset.zero)
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
        label: new Text(
          "SOLICITAR ORÇAMENTO",
          style: new TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11),
        ),
        icon: new Icon(
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

  Widget _buildBody(BuildContext context) {
    return new SingleChildScrollView(
      child: new Padding(
        padding: const EdgeInsets.all(8),
        child: new Column(children: [
          new CarouselSlider.builder(
            itemCount: listImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = listImages[index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(
              height: 250,
              autoPlayAnimationDuration: Duration(seconds: 2),
              autoPlay: true,
              reverse: true,
              scrollDirection: Axis.horizontal,
              viewportFraction: 1,
              aspectRatio: 10,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
          new SizedBox(
            height: 4,
          ),
          buildIndicator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              new Container(
                margin: EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  "NOSSOS PRODUTOS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(color: Colors.white60, width: 1),
                  ),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "Assets/bateria.png",
                        height: 100,
                      ),
                      Text(
                        "Gerador on grid",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 90,
                        margin: EdgeInsets.only(top: 4),
                        child: Text(
                          "Caregamento Rápido ",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: new RaisedButton(
                          padding: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                new BorderRadius.all(const Radius.circular(15)),
                          ),
                          color: Colors.blue,
                          elevation: 10,
                          onPressed: () {},
                          child: Text("Veja mais"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(color: Colors.white60, width: 1),
                  ),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "Assets/controlador.png",
                        height: 100,
                      ),
                      Text(
                        "Controlador on grid",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 90,
                        margin: EdgeInsets.only(top: 4),
                        child: Text(
                          "Caregamento Rápido ",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: new RaisedButton(
                          padding: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                new BorderRadius.all(const Radius.circular(15)),
                          ),
                          color: Colors.blue,
                          elevation: 10,
                          onPressed: () {},
                          child: Text("Veja mais"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    border: Border.all(color: Colors.white60, width: 1),
                  ),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "Assets/bateria.png",
                        height: 100,
                      ),
                      Text(
                        "Gerador on grid",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 90,
                        margin: EdgeInsets.only(top: 4),
                        child: Text(
                          "Caregamento Rápido ",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: new RaisedButton(
                          padding: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                new BorderRadius.all(const Radius.circular(15)),
                          ),
                          color: Colors.blue,
                          elevation: 10,
                          onPressed: () {},
                          child: Text("Veja mais"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          new Container(
            padding: EdgeInsets.only(
              top: 8,
            ),
            width: 400,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: new BorderRadius.all(const Radius.circular(20)),
            ),
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "SEJA NOSSO PARCEIRO",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          new SizedBox(
            height: 8,
          ),
          ListView(shrinkWrap: true, children: <Widget>[
            new ZPerfilItem(
              numeroQuadrados: 3,
              listaTextos: [
                "Seja nosso Revendedor BellSol",

                "Seja nosso Entregador e Instalador BellSol",

                "Clientes Especiais BellSol",
              ],
              listaIcones: [
                Icons.wallet_travel_outlined,
                Icons.car_rental,
                Icons.account_circle_outlined,
              ],
              listaOnTap: [
                () {},
                () {},
                () {},
              ],
              color: Colors.blue,
            ),
          ]),

          SizedBox(
            height: 8,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "Assets/SeloVerde.png",
                height: 90,
                width: 165,
              ),
              new Column(
                children: [
                  new Text(
                    "CERTIFICADO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  new Text(
                    "Empresa Credenciada à \n Certificar  outras Empresas \n com Selo Verde",
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "Assets/LOGOBELLSOL.png",
                height: 90,
              ),
              new Column(
                children: [
                  new Text(
                    "CERTIFICADO",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  new Text(
                    "Empresa com Geração \n de Energia Própria",
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.only(top: 16),
            child: Image.asset(
              "Assets/CopyRight.png",
              height: 100,
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: listImages.length,
      );

  Widget buildImage(String urlImage, int index) => new Container(
        color: Colors.transparent,
        width: double.infinity,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  Widget _buildAppBar() {
    return new AppBar(
      title: new Text(
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
      elevation: 12,
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
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 150),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            TelaQuemSomos(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return new SlideTransition(
                            position: Tween<Offset>(
                                    begin: const Offset(1, 0), end: Offset.zero)
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
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 150),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            TelaServicos(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return new SlideTransition(
                            position: Tween<Offset>(
                                    begin: const Offset(1, 0), end: Offset.zero)
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
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 150),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            TelaNossaLoja(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return new SlideTransition(
                            position: Tween<Offset>(
                                    begin: const Offset(1, 0), end: Offset.zero)
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
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 150),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            TelaContato(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return new SlideTransition(
                            position: Tween<Offset>(
                                    begin: const Offset(1, 0), end: Offset.zero)
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
                        transitionDuration: Duration(milliseconds: 150),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            TelaOrcamento(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return new SlideTransition(
                            position: Tween<Offset>(
                                    begin: const Offset(1, 0), end: Offset.zero)
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
