import 'package:flutter/material.dart';

class StatisticsCardInfo extends StatelessWidget {
  const StatisticsCardInfo({
    super.key,
    required this.homeInfo,
    required this.awayInfo,
    required this.title,
  });
  final String homeInfo;
  final String awayInfo;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(homeInfo),
        Text(title),
        Text(awayInfo),
      ],
    );
  }
}
