import 'package:flutter/material.dart';
import 'package:football_app_task/models/match_model.dart';
import 'package:football_app_task/models/statistics_model.dart';
import 'package:football_app_task/views/detailsPage_widgets/details_card.dart';
import 'package:football_app_task/views/detailsPage_widgets/statistics_list.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.matchModel, required this.homeModel, required this.awayModel});
  final MatchModel matchModel;
  final StatisticsModel? homeModel;
  final StatisticsModel? awayModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Match Details",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body:  Column(
        children: [
          DetailsCard(matchModel: matchModel,),
          homeModel!=null?Expanded(
            child: StatisticsList(homeModel: homeModel!, awayModel: awayModel!,),
          ):const Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("No Statistics right now"),
            ],
          ))
        ],
      ),
    );
  }
}
