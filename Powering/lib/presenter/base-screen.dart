import 'package:flutter/material.dart';
import 'package:powering/presenter/map-screen.dart';
import 'package:powering/utils/colors.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 1;

  navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _bottomAppBarIcon({required int index, required IconData icon}) {
    if (index == 1) {
      return SizedBox(
        width: 80,
        height: 80,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 16,
              child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, gradient: buttonGradient),
                  child: IconButton(
                      iconSize: 50,
                      onPressed: () {
                        navigateTo(index);
                      },
                      icon: Icon(
                        icon,
                        size: 40,
                        color: _selectedIndex == index ? kPrimaryColors : null,
                      ))),
            ),
          ],
        ),
      );
    } else {
      return IconButton(
        onPressed: () {
          navigateTo(index);
        },
        icon: Icon(
          icon,
          color: _selectedIndex == index ? kPrimaryColor : null,
        ),
        iconSize: 30,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _buildBody(),
    );
  }

  _buildBottomNavigationBar() {
    return BottomAppBar(
      child: SafeArea(
        child: Container(
          height: 70,
          color: kBottomAppBarColor,
          child: Material(
            type: MaterialType.transparency,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _bottomAppBarIcon(index: 0, icon: Icons.map_outlined),
                _bottomAppBarIcon(index: 1, icon: Icons.directions_car),
                _bottomAppBarIcon(index: 2, icon: Icons.account_circle_rounded),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildBody() {
    return Container(
      decoration: const BoxDecoration(gradient: kBackGroundGradient),
      child: IndexedStack(
        index: _selectedIndex,
        children: [
          MapScreen(),
          Container(
            child: const Center(
                child: Text(
              'car page bb ',
              style: TextStyle(color: Colors.blue),
            )),
          ),
          Container(
            child: const Center(
                child: Text(
              'User Page',
              style: TextStyle(color: Colors.blue),
            )),
          ),
        ],
      ),
    );
  }
}
