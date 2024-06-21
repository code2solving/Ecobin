import 'package:ecobin/pages/homeApp.dart';
import 'package:ecobin/pages/qrPage.dart';
import 'package:flutter/material.dart';
import 'package:ecobin/pages/catalogPage.dart';
import 'package:ecobin/pages/mapPage.dart';
import 'package:ecobin/pages/rankingPage.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _selectedIndex=0;

  List<Widget> pages=[
    const HomeApp(),
    const CatalogPage(),
    const QrPage(),
    const MapPage(),
    const RankingPage(),
  ];


  void _navigateBar(int index){
    setState((){
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type:BottomNavigationBarType.fixed,
          onTap: _navigateBar,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.archive,),
              label: 'Каталог',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code,  ), // Assuming this is for QR
              label: 'QR',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map,  ),
              label: 'Карта',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart, ), // Assuming this is for Рейтинг
              label: 'Рейтинг',
            ),
          ],
          selectedItemColor: const Color(0xff5E63DB),
        )
    );
  }
}
const name='Касымжомарт';
const telephone='+7 776 137 33 67';