import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  static String apiKey='70e6e49364828b849f990a2572840766';
  static String getFixtureUrl =
      "https://v3.football.api-sports.io/fixtures?live=all";
  static Future<dynamic> getAllFixtures() async {
    var response = await http.get(Uri.parse(getFixtureUrl), headers: {
      'x-rapidapi-host': "v3.football.api-sports.io",
      'x-rapidapi-key': apiKey
    });
    var data = jsonDecode(response.body);
    //print(data);
    return data;
  }
  static Future<dynamic>getTeamStatistics(String fixtureId,String teamId)async{
    var response = await http.get(Uri.parse('https://v3.football.api-sports.io/fixtures/statistics?fixture=$fixtureId&team=$teamId'), headers: {
      'x-rapidapi-host': "v3.football.api-sports.io",
      'x-rapidapi-key': apiKey
    });
    var data=jsonDecode(response.body);
    print (data);
    return data;
  }
}
