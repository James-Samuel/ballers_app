import 'package:flutter/material.dart';

class TeamsDescriptionPage extends StatefulWidget {
  const TeamsDescriptionPage({Key? key}) : super(key: key);

  @override
  State<TeamsDescriptionPage> createState() => _TeamsDescriptionPageState();
}

class _TeamsDescriptionPageState extends State<TeamsDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ballers - Teams Description'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Teams Description',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vestibulum dapibus eleifend felis, non interdum quam tempus quis. '
              'Fusce maximus tellus id leo luctus ullamcorper. '
              'Quisque id orci vel felis placerat efficitur.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
