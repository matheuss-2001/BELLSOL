import 'package:flutter/material.dart';
import 'package:powering/view/initial-screen-view.dart';

class InitialScreen extends StatefulWidget {

  static final String ROUTER = "/initial-screen";

  @override
  _InitialScreenState createState() => _InitialScreenState();

}

class _InitialScreen extends State<InitialScreen> {
 InitialScreenView _view;






  @override
  void initState() {
    _view = new InitialScreenView(this);
    _view.initView();
    super.initState();
  }



}