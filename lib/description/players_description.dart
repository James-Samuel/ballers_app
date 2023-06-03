import 'package:flutter/material.dart';

class PlayersDescriptionPage extends StatefulWidget {
  const PlayersDescriptionPage({Key? key}) : super(key: key);

  @override
  State<PlayersDescriptionPage> createState() => _PlayersDescriptionPageState();
}

class _PlayersDescriptionPageState extends State<PlayersDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ballers - Players Description'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Ballers',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'This is the description page for Players.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );;
  }
}
