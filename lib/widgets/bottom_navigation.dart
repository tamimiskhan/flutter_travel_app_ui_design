import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomNavigationBarTravel extends StatefulWidget {
  @override
  _ButtomNavigationBarTravelState createState() =>
      _ButtomNavigationBarTravelState();
}

class _ButtomNavigationBarTravelState extends State<ButtomNavigationBarTravel> {
  int _selectedIndex = 0;
  var buttomNavStyle = GoogleFonts.lato(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  void _onTapitem(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.4,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5)),
      ]),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/svg/icon_home_colored.svg')
                : SvgPicture.asset('assets/svg/icon_home.svg'),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/svg/icon_heart_colored.svg')
                : SvgPicture.asset('assets/svg/icon_heart.svg'),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/svg/icon_plus_colored.svg')
                : SvgPicture.asset('assets/svg/icon_plus.svg'),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset('assets/svg/icon_notification_colored.svg')
                : SvgPicture.asset('assets/svg/icon_notification.svg'),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? SvgPicture.asset('assets/svg/icon_user_colored.svg')
                : SvgPicture.asset('assets/svg/icon_user.svg'),
            title: Text('Home'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapitem,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
    );
  }
}
