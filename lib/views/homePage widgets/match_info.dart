
import 'package:flutter/material.dart';
import 'package:football_app_task/views/homePage%20widgets/custom_text.dart';
import 'package:football_app_task/views/homePage%20widgets/match_status.dart';

class MatchInfo extends StatelessWidget {
  const MatchInfo({
    super.key,
    required this.date,
    required this.homeGoals,
    required this.awayGoals,
    required this.status,
  });
  final String date;
  final String homeGoals;
  final String awayGoals;
  final String status;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(date,style: const TextStyle(color: Color.fromARGB(255, 163, 163, 163)),),
        MatchGoals(homeGoals: homeGoals, awayGoals: awayGoals, textSize: 50, textColor: Colors.black,),
        MatchStatus(status: status),
      ],
    );
  }
}

class MatchGoals extends StatelessWidget {
  const MatchGoals({
    super.key,
    required this.homeGoals,
    required this.awayGoals, required this.textSize, required this.textColor,
  });

  final String homeGoals;
  final String awayGoals;
  final double textSize;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: homeGoals, textSize: textSize, textColor: textColor,
        ),
        const SizedBox(
          width: 5,
        ),
         CustomText(
          text: '-', textSize: textSize, textColor: textColor,
        ),
        const SizedBox(
          width: 5,
        ),
        CustomText(
          text: awayGoals, textSize: textSize, textColor: textColor,
        ),
      ],
    );
  }
}
