import 'package:flutter/material.dart';
import 'package:football_app_task/helper/api.dart';
import 'package:football_app_task/models/match_model.dart';
import 'package:football_app_task/models/statistics_model.dart';
import 'package:football_app_task/views/details_page.dart';
import 'package:football_app_task/views/homePage%20widgets/match_info.dart';
import 'package:football_app_task/views/homePage%20widgets/team_info.dart';
import 'package:get/get.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({
    super.key,
    required this.matchModel,
  });
  final MatchModel matchModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        var homeData = await Api.getTeamStatistics(
            matchModel.fixtureId.toString(), matchModel.homeId.toString());
        var awayData = await Api.getTeamStatistics(
            matchModel.fixtureId.toString(), matchModel.awayId.toString());
        if (homeData['response'].length != 0 &&
            awayData['response'].length != 0) {
          StatisticsModel homeModel = StatisticsModel.fromJson(homeData);
          StatisticsModel awayModel = StatisticsModel.fromJson(awayData);
          Get.to(DetailsPage(
            matchModel: matchModel,
            homeModel: homeModel,
            awayModel: awayModel,
          ));
        } else {
          Get.to(DetailsPage(
            matchModel: matchModel,
            homeModel: null,
            awayModel: null,
          ));
          print('No Statistics to show');
        }
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TeamInfo(
              teamNameColor: Colors.black,
              image: matchModel.homeLogo,
              teamName: matchModel.homeName,
            ),
            MatchInfo(
              date: matchModel.date.substring(0, 10),
              homeGoals: matchModel.homeGoals.toString(),
              awayGoals: matchModel.awayGoals.toString(),
              status: matchModel.long,
            ),
            TeamInfo(
              teamNameColor: Colors.black,
              image: matchModel.awayLogo,
              teamName: matchModel.awayName,
            ),
          ],
        ),
      ),
    );
  }
}
