import 'package:flutter/material.dart';

class TeamInfo extends StatelessWidget {
  const TeamInfo({
    super.key,
    required this.image,
    required this.teamName,
    required this.teamNameColor,
  });
  final String image;
  final String teamName;
  final Color teamNameColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          image,
          height: 68,
        ),
        SizedBox(
            width: 110,
            height: 30,
            child: Center(
                child: Text(
              teamName,
              style:  TextStyle(fontSize: 12,color: teamNameColor),
              
            ))),
      ],
    );
  }
}
