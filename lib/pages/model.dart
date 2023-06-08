//Mirroring Data _nakuzileat kuzifanya kuwa object
// it is like maping for for API to MyApp
//Kazi yake ni mapping nakupeleka peleka kwenye json
// DTO

class Game {
  final int id;
  final String date;
  final Team homeTeam;
  final int homeTeamScore;
  final int period;
  final bool postseason;
  final int season;
  final String status;
  final String time;
  final Team visitorTeam;
  final int visitorTeamScore;

  Game({
    required this.id,
    required this.date,
    required this.homeTeam,
    required this.homeTeamScore,
    required this.period,
    required this.postseason,
    required this.season,
    required this.status,
    required this.time,
    required this.visitorTeam,
    required this.visitorTeamScore,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
        id: json['id'],
        date: json['date'],
        homeTeam: Team.teamJson(json['home_team']),
        homeTeamScore: json['home_team_score'],
        period: json['period'],
        postseason: json['postseason'],
        season: json['season'],
        status: json['status'],
        time: json['time'],
        visitorTeam: Team.teamJson(json['visitor_team']),
        visitorTeamScore: json['visitor_team_score']);
  }
}

class Team {
  final int id;
  final String abbreviation;
  final String city;
  final String conference;
  final String division;
  final String fullName;
  final String name;

  Team({
    required this.id,
    required this.abbreviation,
    required this.city,
    required this.conference,
    required this.division,
    required this.fullName,
    required this.name,
  });

  factory Team.teamJson(Map<String, dynamic> json) {
    return Team(
        id: json['id'],
        abbreviation: json['abbreviation'],
        city: json['city'],
        conference: json['conference'],
        division: json['division'],
        fullName: json['full_name'],
        name: json['name']);
  }
}

// I dont Understand them

//
class Player {
  final int? id;
  final String? first_name;
  final String? last_name;
  final String? position;
  final Team? team;

  Player(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.position,
      required this.team});

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
        id: json['id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        position: json['position'],
        team: Team.teamJson(json['team']));
  }
}
