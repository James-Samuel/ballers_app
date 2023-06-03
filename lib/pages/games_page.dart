import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'game.dart';

class GamesPage extends StatelessWidget {
  // List<Game> games;
  const GamesPage({
    super.key,
  });
  Future<List<Game>> fetchGames() async {
    final response =
        await http.get(Uri.parse('https://www.balldontlie.io/api/v1/games'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      List data = jsonDecode(response.body)['data'];
      List<Game> games = data.map((e) => Game.fromJson(e)).toList();
      // print(games);
      return games;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Games');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Games'),
      // ),
      body: Container(
        // width:200,
        color: Colors.white70,
        margin: const EdgeInsets.all(10.00),
        child: FutureBuilder(
          future: fetchGames(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Handle the container tap here
                      // You can navigate to a new screen or perform any other action
                      print('Container tapped! Game ID: ${snapshot.data![index].id}');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        snapshot.data![index].homeTeam.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            // By default, show a loading spinner.
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}