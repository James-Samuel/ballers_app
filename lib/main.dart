import 'package:flutter/material.dart';
import 'package:ballerz_app/pages/games_page.dart';
import 'description/games_description.dart';
import 'description/players_description.dart';
import 'description/statistics_description.dart';
import 'description/teams_description.dart';
import 'pages/statistics_page.dart';
import 'pages/teams_page.dart';
import 'pages/players_page.dart';
import 'homepage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get selectedGame => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Ballers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(), //PAGE CLASS YA KWANZA KUITWA (IPO ATTACHED KWENYE BUTTON YA KWANZA)
        '/games': (context) =>  const GamesPage(),
        '/statistics': (context) => const StatisticsPage(),
        '/teams': (context) => const TeamsPage(),
        '/players': (context) => const PlayersPage(),


        //PAGES DESCRIPTION
        '/games_description': (context) => GamesDescriptionPage(game: selectedGame),
        '/statistics_description': (context) => const StatisticsDescriptionPage(),
        '/teams_description': (context) => const TeamsDescriptionPage(),
        '/players_description': (context) => const PlayersDescriptionPage(),
      },
    );
  }
}
