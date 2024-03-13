import 'package:flutter/material.dart';
import 'package:football_app_task/models/statistics_model.dart';
import 'package:football_app_task/views/detailsPage_widgets/statisticts_card.dart';

class StatisticsList extends StatelessWidget {
  const StatisticsList({
    super.key, required this.homeModel, required this.awayModel,
  });
  final StatisticsModel homeModel;
  final StatisticsModel awayModel;
  final List<String> titles = const [
    ' Shots on Goal',
    'Shots off Goal',
    'Shots insidebox',
    'Shots outsidebox',
    'Total Shots',
    'Blocked Shots',
    'Fouls',
    'Corner Kicks',
    'Offsides',
    'Ball Possession',
    'Yellow Cards',
    'Red Cards',
    'Goalkeeper Saves',
    'Total passes',
    'Passes accurate',
    'Passes %'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListView(
        children: [
          Card(
            homeInfo: homeModel.shotsOnGoal!=null?homeModel.shotsOnGoal.toString():'0',
            awayInfo: awayModel.shotsOnGoal!=null?awayModel.shotsOnGoal.toString():'0',
            title: titles[0],
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.shotsOffGoal!=null?homeModel.shotsOffGoal.toString():'0',
            awayInfo: awayModel.shotsOffGoal!=null?awayModel.shotsOffGoal.toString():'0',
            title: titles[1].toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.shotsInsideBox!=null?homeModel.shotsInsideBox.toString():'0',
            awayInfo: awayModel.shotsInsideBox!=null?awayModel.shotsInsideBox.toString():'0',
            title: titles[2].toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.shotsOutsideBox!=null?homeModel.shotsOutsideBox.toString():'0',
            awayInfo: awayModel.shotsOutsideBox!=null?awayModel.shotsOutsideBox.toString():'0',
            title: titles[3].toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.totalShots!=null?homeModel.totalShots.toString():'0',
            awayInfo: awayModel.totalShots!=null?awayModel.totalShots.toString():'0',
            title: titles[4].toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.blockedShots!=null?homeModel.blockedShots.toString():'0',
            awayInfo: awayModel.blockedShots!=null?awayModel.blockedShots.toString():'0',
            title: titles[5].toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.fouls!=null?homeModel.fouls.toString():'0',
            awayInfo: awayModel.fouls!=null?awayModel.fouls.toString():'0',
            title: titles[6].toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.corner!=null?homeModel.corner.toString():'0',
            awayInfo: awayModel.corner!=null?awayModel.corner.toString():'0',
            title: titles[7].toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.offSides!=null?homeModel.offSides.toString():'0',
            awayInfo: awayModel.offSides!=null?awayModel.offSides.toString():'0',
            title: titles[8].toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.ballPossession!=null?homeModel.ballPossession.toString():'0',
            awayInfo: awayModel.ballPossession!=null?awayModel.ballPossession.toString():'0',
            title: titles[9].toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.yellowCards!=null?homeModel.yellowCards.toString():'0',
            awayInfo: awayModel.yellowCards!=null?awayModel.yellowCards.toString():'0',
            title: titles[10].toString().toString(),
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.redCards!=null?homeModel.redCards.toString():'0',
            awayInfo: awayModel.redCards!=null?awayModel.redCards.toString():'0',
            title: titles[11],
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.goalKeeperSaves!=null?homeModel.goalKeeperSaves.toString():'0',
            awayInfo: awayModel.goalKeeperSaves!=null?awayModel.goalKeeperSaves.toString():'0',
            title: titles[12],
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.totalPasses!=null?homeModel.totalPasses.toString():'0',
            awayInfo: awayModel.totalPasses!=null?awayModel.totalPasses.toString():'0',
            title: titles[13],
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.passesAccurate!=null?homeModel.passesAccurate.toString():'0',
            awayInfo:  awayModel.passesAccurate!=null?awayModel.passesAccurate.toString():'0',
            title: titles[14],
            isLast: false,
          ),
          Card(
            homeInfo: homeModel.passesPercent!=null?homeModel.passesPercent.toString():'0',
            awayInfo: awayModel.passesPercent!=null?awayModel.passesPercent.toString():'0',
            title: titles[15],
            isLast: true,
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.homeInfo,
    required this.awayInfo,
    required this.title,
    required this.isLast,
  });

  final String homeInfo;
  final String awayInfo;
  final String title;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
      child: StatistictsCard(
        isLast: isLast,
        homeInfo: homeInfo.toString(),
        awayInfo: awayInfo.toString(),
        title: title,
      ),
    );
  }
}
