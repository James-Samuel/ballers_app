// import 'package:ballerz_app/pages/game.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
//
// class PlayersPage extends StatefulWidget {
//   const PlayersPage({Key? key}) : super(key: key);
//
//   @override
//   // State<PlayersPage> createState() => _PlayersPageState();
//   _PlayersPageState createState(){
//     return _PlayersPageState();
//   }
// }
//
//
// class _PlayersPageState extends State<PlayersPage> {
//
//   late Future<List<Player>> _playersFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     _playersFuture = fetchPlayer();
//   }
//
//   Future<List<Player>> fetchPlayer() async {
//     final response =
//     await http.get(Uri.parse('https://www.balldontlie.io/api/v1/players/237'));
//
//     if (response.statusCode == 200) {
//       // If the server returned a 200 OK response, parse the JSON.
//       List data = jsonDecode(response.body)['data'];
//       List<Player> players = data.map((e) => Player.fromJson(e)).toList();
//       return players;
//     } else {
//       // If the server did not return a 200 OK response, throw an exception.
//       throw Exception('Failed to load players');
//     }
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//         color: Colors.white70,
//         margin: const EdgeInsets.all(10.00),
//     child: FutureBuilder<List<Player>>(
//     future: _playersFuture,
//     builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//     // While the data is loading, show a loading spinner.
//     return const Center(child: CircularProgressIndicator());
//     } else if (snapshot.hasError) {
//     // If there's an error while fetching the data, show an error message.
//     return Center(child: Text('Error: ${snapshot.error}'));
//     } else if (snapshot.hasData) {
//     // If the data has been successfully fetched, display the ListView.builder.
//     return ListView.builder(
//     itemCount: snapshot.data!.length,
//     itemBuilder: (context, index) {
//     return GestureDetector(
//     onTap: () {
//     // Handle the container tap here.
//     // You can navigate to a new screen or perform any other action.
//     print('Container tapped! Player ID: ${snapshot.data![index].id}');
//     },
//     child: Container(
//     padding: const EdgeInsets.all(20),
//     margin: const EdgeInsets.all(5),
//     decoration: BoxDecoration(
//     color: Colors.grey[900],
//     borderRadius: BorderRadius.circular(4),
//     ),
//     child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//     Text(
//     snapshot.data![index].homeTeam.first_name,
//     style: const TextStyle(
//     color: Colors.white,
//     fontSize: 14,
//     ),
//     ),
//     const Text('VS',style: TextStyle(
//     color: Colors.white,
//     fontSize: 14,
//     ),),
//     Text(
//     snapshot.data![index].visitorTeam.name,
//     style: const TextStyle(
//     color: Colors.white,
//     fontSize: 14,
//     ),
//     ),
//     ]),
//     ),
//     );
//   }
//   );
// ),
//     }
//     };
