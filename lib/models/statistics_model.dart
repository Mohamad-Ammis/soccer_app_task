class StatisticsModel {
  final dynamic shotsOnGoal;
  final dynamic shotsOffGoal;
  final dynamic totalShots;
  final dynamic blockedShots;
  final dynamic shotsInsideBox;
  final dynamic shotsOutsideBox;
  final dynamic fouls;
  final dynamic corner;
  final dynamic offSides;
  final dynamic ballPossession;
  final dynamic yellowCards;
  final dynamic redCards;
  final dynamic goalKeeperSaves;
  final dynamic totalPasses;
  final dynamic passesAccurate;
  final dynamic passesPercent;

  StatisticsModel(
      {required this.shotsOnGoal,
      required this.shotsOffGoal,
      required this.totalShots,
      required this.blockedShots,
      required this.shotsInsideBox,
      required this.shotsOutsideBox,
      required this.fouls,
      required this.corner,
      required this.offSides,
      required this.ballPossession,
      required this.yellowCards,
      required this.redCards,
      required this.goalKeeperSaves,
      required this.totalPasses,
      required this.passesAccurate,
      required this.passesPercent});
  factory StatisticsModel.fromJson(dynamic json) {
    return StatisticsModel(
        shotsOnGoal: json['response'][0]['statistics'][0]['value'],
        shotsOffGoal: json['response'][0]['statistics'][1]['value'],
        totalShots: json['response'][0]['statistics'][2]['value'],
        blockedShots: json['response'][0]['statistics'][3]['value'],
        shotsInsideBox: json['response'][0]['statistics'][4]['value'],
        shotsOutsideBox: json['response'][0]['statistics'][5]['value'],
        fouls: json['response'][0]['statistics'][6]['value'],
        corner: json['response'][0]['statistics'][7]['value'],
        offSides: json['response'][0]['statistics'][8]['value'],
        ballPossession: json['response'][0]['statistics'][9]['value'],
        yellowCards: json['response'][0]['statistics'][10]['value'],
        redCards: json['response'][0]['statistics'][11]['value'],
        goalKeeperSaves: json['response'][0]['statistics'][12]['value'],
        totalPasses: json['response'][0]['statistics'][13]['value'],
        passesAccurate: json['response'][0]['statistics'][14]['value'],
        passesPercent: json['response'][0]['statistics'][15]['value']);
  }
}
