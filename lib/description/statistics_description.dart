import 'package:flutter/material.dart';

class StatisticsDescriptionPage extends StatefulWidget {
  const StatisticsDescriptionPage({Key? key}) : super(key: key);

  @override
  State<StatisticsDescriptionPage> createState() => _StatisticsDescriptionPageState();
}

class _StatisticsDescriptionPageState extends State<StatisticsDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ballers - Statistics Description'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Statistics Description',
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
    );;
  }
}


