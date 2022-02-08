import 'package:bell_sol/containers/fluxo-inicial/componentes/tela-inicial.dart';
import 'package:brasil_fields/brasil_fields.dart';
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
  Map<String, dynamic> formData;
  String  estadoSelecionado;
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return new Scaffold(
      //body: _buildBody(),
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
    );
  }
  /*
  Widget _buildBody() {
    TextEditingController statesSelected = TextEditingController();
    TextEditingController tipoConexaoSelected = TextEditingController();
    TextEditingController tipoClienteSelected = TextEditingController();
    TextEditingController tipoConcessionariaSelected = TextEditingController();

    formData = {
      'Cidade': 'São Paulo',

    };

    List<String> listaEstados = [
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

    List<String> ListaTipoIntalacao = [
      "Monofásico",
      "Bifásico",
      "Trifásico",
    ];
    List<String> ListaTipoCliente = [
      "Residencial",
      "Comercial",
    ];
    List<String> listaTipoConcessionaria = [
      "UHENPAL",
      "RGE",
      "MUX-Energia",
      "HIDROPAN",
      "ELETROCAR",
      "DEMEI",
      "CEEE-D",
      "AES-SUL",
      "ENEL",
    ];
    return new SingleChildScrollView(
      child: new Padding(
        padding: const EdgeInsets.all(8),
        child: new Column(
          children: [
            new Container(
              margin: const EdgeInsets.only(bottom: 16, top: 8),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: new ZText(
                tituloText: "DADOS DE CONTATO:",
                zTipos: ZTipoTextos.isTitulo,
              ),
            ),
            new TextFormField(
              cursorColor: Colors.blue,
              controller: nomeController,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintText: "Insira seu Nome",
                labelText: " Nome: ",
                border: OutlineInputBorder(),
                labelStyle: TextStyle(fontSize: 18),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.all(16),
                enabled: true,
                errorMaxLines: 100,
                filled: true,
                fillColor: Colors.white,

              ),
            ),
            new SizedBox(
              height: 8,
            ),
            new TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintText: "Insira seu Email",
                labelText: " E-mail: ",
                border: OutlineInputBorder(),
                labelStyle: TextStyle(fontSize: 18),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.all(16),
                enabled: true,
                errorMaxLines: 100,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            new SizedBox(
              height: 8,
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                TelefoneInputFormatter()
              ],
              //keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                hintText: "Insira seu Telefone",
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
                tituloText: "LOCALIZAÇÃO E DESEMPENHO",
                zTipos: ZTipoTextos.isTitulo,
              ),
            ),
            new TextFormField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                hintText: "Insira sua Cidade",
                labelText: " Cidade: ",
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
            new SizedBox(
              height: 8,
            ),
            new Container(
              color: Colors.white,
              child: new DropDownField(
                icon: new IconButton(
                  padding: const EdgeInsets.only(left: 16),
                  alignment: Alignment.center,
                  icon: new Icon(
                    Icons.location_on_outlined,
                    color: Colors.blue,
                    size: 18,
                  ),
                ),
                strict: false,
                controller: statesSelected,
                hintText: "São Paulo",
                enabled: true,
                labelText: "Estado:",
                required: true,

                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                itemsVisibleInDropdown: 8,
                items: listaEstados,
                  value: formData['City'],
                  setter: (dynamic newValue) {
                    formData['City'] = newValue;
                  }),
              ),

            new SizedBox(
              height: 8,
            ),
            new Container(
              color: Colors.white,
              child: new DropDownField(
                icon: new IconButton(
                  padding: const EdgeInsets.only(left: 16),
                  alignment: Alignment.center,
                  onPressed: () {},
                  icon: new Icon(
                    Icons.help_outline_rounded,
                    color: Colors.blue,
                    size: 18,
                  ),
                ),
                strict: true,
                controller: tipoConexaoSelected,
                enabled: true,
                labelText: "Tipo de Instalação:",
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                itemsVisibleInDropdown: 8,
                items: ListaTipoIntalacao,
                onValueChanged: (value) {
                  setState(() {
                    tipoConexaoSelected = value;
                  });
                },
              ),
            ),
            new SizedBox(
              height: 8,
            ),
            new Container(
              color: Colors.white,
              child: new DropDownField(
                icon: new IconButton(
                  padding: const EdgeInsets.only(left: 16),
                  alignment: Alignment.center,
                  onPressed: () {},
                  icon: new Icon(
                    Icons.help_outline_rounded,
                    color: Colors.blue,
                    size: 18,
                  ),
                ),
                strict: true,
                controller: tipoClienteSelected,
                enabled: true,
                labelText: "Tipo de Cliente:",
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                itemsVisibleInDropdown: 8,
                items: ListaTipoCliente,
                onValueChanged: (value) {
                  setState(() {
                    tipoClienteSelected = value;
                  });
                },
              ),
            ),
            new SizedBox(
              height: 8,
            ),
            new Container(
              color: Colors.white,
              child: new DropDownField(
                icon: new IconButton(
                  padding: const EdgeInsets.only(left: 16),
                  alignment: Alignment.center,
                  onPressed: () {},
                  icon: new Icon(
                    Icons.help_outline_rounded,
                    color: Colors.blue,
                    size: 18,
                  ),
                ),
                strict: true,
                controller: tipoConcessionariaSelected,
                //hintText: "concessionária",
                enabled: true,
                labelText: "Concessionária:",
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                itemsVisibleInDropdown: 8,
                items: listaTipoConcessionaria,
                onValueChanged: (value) {
                  setState(() {
                    tipoConcessionariaSelected = value;
                  });
                },
              ),
            ),
            new SizedBox(
              height: 8,
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                //hintText: "Insira sua Cidade",
                labelText: "Consumo médio mensal (kWh) ",
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
            new SizedBox(
              height: 8,
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                //hintText: "Insira sua Cidade",
                labelText: "Tarifa (RS)",
                border: OutlineInputBorder(),
                labelStyle: TextStyle(fontSize: 18),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: const EdgeInsets.all(16),
                isCollapsed: false,
                enabled: true,
                isDense: true,
                errorMaxLines: 100,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            new SizedBox(
              height: 8,
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                //hintText: "Insira sua Cidade",
                labelText: "Taxa de Desempenho (%)",
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
            new SizedBox(
              height: 8,
            ),
            _exibirBotao(),
          ],
        ),
      ),
    );
  }
  ?


   */

  Widget _exibirBotao() {
    return new Material(
      elevation: 4,
      child: new Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height / 8,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: new Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  new Container(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: new Text(
                      "PROSSEGUIR",
                      style: Theme.of(context).textTheme.button.copyWith(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return new AppBar(
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
    return new Drawer(
      child: new Container(
        color: Colors.blue,
        child: new Column(
          children: [
            new DrawerHeader(
              margin: const EdgeInsets.only(left: 4),
              child: new Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  "Assets/LogoBellSolBG.png",
                  height: 120,
                  width: 120,
                  alignment: Alignment.center,
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.blue,
              ),
            ),
            new RaisedButton(
              elevation: 4,
              child: new ListTile(
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
            new Divider(
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
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                dense: true,
              ),
            ),
            new Divider(
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
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                dense: true,
              ),
            ),
            new Divider(
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
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            new Divider(
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
                  style: new TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            new Divider(
              height: 1,
            ),
            new RaisedButton(
              elevation: 4,
              child: new ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                dense: true,
                leading: new Icon(
                  Icons.add_box,
                  color: Colors.white,
                  size: 20,
                ),
                title: new Text(
                  'Solicitar Orçamento',
                  style: new TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            new Divider(
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
