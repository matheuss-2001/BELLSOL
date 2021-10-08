import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-inicial.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:z_components/components/z-text.dart';
import 'package:z_components/config/z-tipo-textos.dart';

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

  Widget _buildBody() {
    FocusNode _nomeCompletoFocusNode = new FocusNode();
    FocusNode _emailFocusNode = new FocusNode();
    FocusNode _telefoneFocusNode = new FocusNode();

    TextEditingController nomeController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController telefoneController = TextEditingController();
    var statesSelected = TextEditingController();
    List<String> states = [
      "Acre(AC)",
      "Alagoas(AL)",
      "Amapá(AP)",
      "Amazonas(AM)",
      "Bahia(BA)",
      "Ceará(CE)",
      "Distrito Federal(DF)",
      "Espírito Santo(ES)",
      "Goiás (GO)",
      "Maranhão(MA)",
      "Mato Grosso(MT)",
      "Mato Grosso do Sul (MS)",
      " Minas Gerais(MG)",
      " Pará(PA)",
      " Paraíba(PB)",
      " Paraná(PR)",
      "Pernambuco(PE)",
      "Piauí(PI)",
      "Rio de Janeiro(RJ)",
      "Rio Grande do Norte(RN)",
      "Rio Grande do Sul(RS)",
      "Rondônia(RO)",
      "Roraima(RR)",
      "Santa Catarina(SC)",
      "São Paulo(SP)",
      "Sergipe(SE)",
      "Tocantins(TO)",
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            new Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: new ZText(
                tituloText: "DADOS DE CONTATO:",
                zTipos: ZTipoTextos.isTitulo,
              ),
            ),
            TextFormField(
              cursorColor: Colors.blue,
              autofocus: true,
              focusNode: _nomeCompletoFocusNode,
              controller: nomeController,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintText: "João Carlos",
                labelText: " Nome: ",
                border: OutlineInputBorder(),
                labelStyle: TextStyle(fontSize: 18),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.all(16),
                isCollapsed: false,
                enabled: true,
                isDense: true,
                errorMaxLines: 100,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              inputFormatters: [],
              focusNode: _emailFocusNode,
              controller: emailController,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintText: "JoãoCarlos@gmail.com",
                labelText: " E-mail: ",
                border: OutlineInputBorder(),
                labelStyle: TextStyle(fontSize: 18),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.all(16),
                isCollapsed: false,
                enabled: true,
                isDense: true,
                errorMaxLines: 100,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              focusNode: _telefoneFocusNode,
              inputFormatters: [],
              keyboardType: TextInputType.number,
              controller: telefoneController,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                hintText: "000 00000-0000",
                labelText: " Telefone: ",

                border: OutlineInputBorder(),
                labelStyle: TextStyle(fontSize: 18),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.all(16),
                isCollapsed: false,
                enabled: true,
                isDense: true,
                //errorMaxLines: 100,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: new ZText(
                tituloText:
                    "DADOS PARA O DIMENSIONAMENTO DO SEU GERADOR SOLAR:",
                zTipos: ZTipoTextos.isTitulo,
              ),
            ),
            Container(
              color: Colors.white,
              child: new DropDownField(
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Colors.blue,
                  size: 18,
                ),
                strict: true,
                controller: statesSelected,
                hintText: "São Paulo",
                enabled: true,
                labelText: "Estado:",
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                itemsVisibleInDropdown: 8,
                items: states,
                onValueChanged: (value) {
                  setState(() {
                    statesSelected = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text(
        "ORÇAMENTO",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      backgroundColor: Colors.blue,
      automaticallyImplyLeading: true,
      actions: [
        Image.asset(
          "Assets/LogoBellSolBG.png",
          height: 90,
          width: 90,
          alignment: Alignment.center,
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
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 150),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            TelaInicial(),
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
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20,
                ),
                hoverColor: Colors.yellow,
                title: Text(
                  'Início',
                  style: TextStyle(
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
            RaisedButton(
              elevation: 4,
              splashColor: Colors.yellow,
              child: ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Quem Somos',
                  style: TextStyle(
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
            RaisedButton(
              elevation: 4,
              child: ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.design_services,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Serviços',
                  style: TextStyle(
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
            RaisedButton(
              elevation: 4,
              child: ListTile(
                onTap: () {},
                dense: true,
                leading: Icon(
                  Icons.store,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Nossa Loja',
                  style: TextStyle(
                      color: Colors.white,
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
                  color: Colors.white,
                  size: 18,
                ),
                title: Text(
                  'Contato',
                  style: TextStyle(
                      color: Colors.white,
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
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Solicitar Orçamento',
                  style: TextStyle(
                      color: Colors.white,
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
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  "(91) 98806-9086",
                  style: TextStyle(
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
