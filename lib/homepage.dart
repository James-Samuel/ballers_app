import 'package:flutter/material.dart';

import 'pages/games_page.dart';
import 'pages/statistics_page.dart';
import 'pages/teams_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const GamesPage(),
    const StatisticsPage(),
    const TeamsPage(),
    // const PlayersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   'assets/appbar_image.png',
            //   fit: BoxFit.contain,
            //   height: 1,
            //   width: 1,
            // ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Baller\'s',
                style: TextStyle(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball, color: Colors.black, size: 30),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart, color: Colors.black, size: 30),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              color: Colors.black,
              size: 30,
            ),
            label: 'Teams',
            // decoration:BoxDecoration(color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 30,
            ),
            label: 'Players',
            // backgroundColor: color: Colors.,
          ),
        ],
      ),
    );
  }
}
