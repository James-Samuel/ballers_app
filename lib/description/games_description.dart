import 'package:flutter/material.dart';

class GamesDescriptionPage extends StatefulWidget {
  const GamesDescriptionPage({Key? key, required game}) : super(key: key);

  @override
  State<GamesDescriptionPage> createState() => _GamesDescriptionPageState();
}

class _GamesDescriptionPageState extends State<GamesDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    var game;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Home Team: ${game.homeTeam.fullName}'),
            Text('Visitor Team: ${game.visitorTeam.fullName}'),
            Text('Home Team Score: ${game.homeTeamScore}'),
            Text('Visitor Team Score: ${game.visitorTeamScore}'),
            Text('Status: ${game.status}'),
            Text('Date: ${game.date.toString()}'),
          ],
        ),
      ),
    );
  }
}
