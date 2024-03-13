import 'package:flutter/material.dart';
import 'package:football_app_task/helper/api.dart';
import 'package:football_app_task/models/match_model.dart';
import 'package:football_app_task/views/homePage%20widgets/match_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Api.getAllFixtures(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
          dynamic data=snapshot.data['response'];
          print(data);
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: ((context, index) {
            return MatchCard(matchModel: MatchModel.fromJson(snapshot.data, index));
          }));}
          else{
            return const  Center(child:  CircularProgressIndicator());
          }
        });
  }
}
