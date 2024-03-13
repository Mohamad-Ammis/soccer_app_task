class MatchModel {
  final bool hasError;
  final dynamic fixtureId;
  final String date;
  final dynamic long;
  final String leagueName;
  final dynamic homeId;
  final String homeName;
  final String homeLogo;
  final bool homeWinner;
  final dynamic homeGoals;
  final dynamic awayId;
  final String awayName;
  final String awayLogo;
  final bool awayWinner;
  final dynamic awayGoals;
  const MatchModel({
    required this.hasError,
    required this.fixtureId,
    required this.date,
    required this.long,
    required this.leagueName,
    required this.homeId,
    required this.homeName,
    required this.homeLogo,
    required this.homeWinner,
    required this.homeGoals,
    required this.awayId,
    required this.awayName,
    required this.awayLogo,
    required this.awayWinner,
    required this.awayGoals,
  });
  factory MatchModel.fromJson(dynamic json, int index) {
    return MatchModel(
        hasError: json['errors'] == null ? false : true,
        fixtureId: json['response'][index]['fixture']['id'],
        date: json['response'][index]['fixture']['date'],
        long: json['response'][index]['fixture']['status']['long'],
        leagueName: json['response'][index]['league']['name'],
        homeId: json['response'][index]['teams']['home']['id'],
        homeName: json['response'][index]['teams']['home']['name'],
        homeLogo: json['response'][index]['teams']['home']['logo'],
        homeWinner: json['response'][index]['teams']['home']['winner'] ?? false,
        homeGoals: json['response'][index]['goals']['home'] ?? 0,
        awayId: json['response'][index]['teams']['away']['id'],
        awayName: json['response'][index]['teams']['away']['name'],
        awayLogo: json['response'][index]['teams']['away']['logo'],
        awayWinner: json['response'][index]['teams']['away']['winner'] ?? false,
        awayGoals: json['response'][index]['goals']['home'] ?? 0);
  }
}
