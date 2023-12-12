// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:ulangan_flutter/component/detail_product.dart';
import 'package:ulangan_flutter/component/home.dart';
import 'package:ulangan_flutter/component/inspirasi.dart';
import 'package:ulangan_flutter/component/profile.dart';
import 'package:ulangan_flutter/component/wishlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => BtnNavigationBar()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
            ),
            SizedBox(height: 20),
            Text('Creating a better everyday life'),
            Text('For the many people')
          ],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 3),
//         () => Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => BtnNavigationBar())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.white,
//         child: Column(
//           children: [
//             Text('halo',style: TextStyle(color: Colors.black,fontSize: 20),)
//           ],
//         ));
//   }
// }


class BtnNavigationBar extends StatefulWidget {
  const BtnNavigationBar ({super.key});

  @override
  State<BtnNavigationBar> createState() => _BtnNavigationBarState();
}

class _BtnNavigationBarState extends State<BtnNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // BodyBeranda(),
    Home(),
    Inspiration(),
    WishList(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_1), 
              label: 'Beranda'
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.coffee), 
              label: 'Inspirasi'
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart), 
              label: 'Wishlist'
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_2user), 
              label: 'Profile'
            ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff0058AB),
        // unselectedItemColor: Color(0xff1b1b1b),
        unselectedLabelStyle: TextStyle(
          color: Color(0xff1b1b1b)
        ),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}

