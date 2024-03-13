import 'package:flutter/material.dart';
import 'package:football_app_task/models/match_model.dart';
import 'package:football_app_task/views/homePage%20widgets/match_info.dart';
import 'package:football_app_task/views/homePage%20widgets/team_info.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key, required this.matchModel,
  });
  final MatchModel matchModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      ),
      padding: const EdgeInsets.only(bottom: 32, left: 8, right: 8, top: 16),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(
                height: 5,
              ),
              TeamInfo(
                teamNameColor: Colors.white,
                image: matchModel.homeLogo,
                teamName: matchModel.homeName,
              ),
            ],
          ),
          MatchGoals(
            homeGoals: matchModel.homeGoals.toString(),
            awayGoals: matchModel.awayGoals.toString(),
            textSize: 70, textColor: Colors.white,
          ),
          Column(
            children: [
              const Text(
                "Away",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(
                height: 5,
              ),
              TeamInfo(
                teamNameColor: Colors.white,
                image: matchModel.awayLogo,
                teamName: matchModel.awayName,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
