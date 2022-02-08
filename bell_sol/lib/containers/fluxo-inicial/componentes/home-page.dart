import 'package:bell_sol/containers/fluxo-inicial/bloc/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){}

  Widget _buildBottomNavigationBar(){
    return BottomAppBar(
      child:  Container(
        height: 70,
        color: BottomNavigatorBarColor,
        child:Material(
          type: MaterialType.transparency,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                color: Colors.grey,
                  icon:Icon(Icons.house_outlined),
                  iconSize: 35 ,
                  onPressed: (){}
                  ),
              IconButton(
                  color: Colors.grey,
                  icon:Icon(Icons.bar_chart_rounded),
                  iconSize: 35 ,
                  onPressed: (){}
              ),

              SizedBox(
                width: 80,
                height: 80,
                child: Stack(
                  clipBehavior: Clip.none,
                   children: [
                     Positioned(
                       bottom: 20,
                       child: Container(
                         decoration: BoxDecoration(
                            gradient: buttonGradiant
                         ),
                         child: IconButton(
                           iconSize:50,
                           onPressed: (){},
                           icon:Icon(Icons.power_settings_new_rounded),
                           color: Colors.white,
                         ),
                       ),
                     ),
                   ],
                ),
              ),
              IconButton(
                  color: Colors.grey,
                  icon:Icon(Icons.settings),
                  iconSize: 35 ,
                  onPressed: (){}
              ),
              IconButton(
                  color: Colors.grey,
                  icon:Icon(Icons.account_circle_outlined),
                  iconSize: 35 ,
                  onPressed: (){}
              ),
            ],
          ),
        ),
      ),
    );
  }
}
