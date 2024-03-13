
import 'package:flutter/material.dart';
import 'package:football_app_task/views/detailsPage_widgets/statistics_info.dart';

class StatistictsCard extends StatelessWidget {
  const StatistictsCard({
    super.key, required this.isLast, required this.homeInfo, required this.awayInfo, required this.title,
  });
final bool isLast;
final String homeInfo;
final String awayInfo;
final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         StatisticsCardInfo(
          homeInfo: homeInfo,
          awayInfo: awayInfo,
          title: title,
        ),
        const SizedBox(
          height: 5,
        ),
        !isLast  
            ? const Divider(
                thickness: 0.3,
              )
            : Container()
      ],
    );
  }
}

