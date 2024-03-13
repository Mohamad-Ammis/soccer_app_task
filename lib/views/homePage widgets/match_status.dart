
import 'package:flutter/material.dart';

class MatchStatus extends StatelessWidget {
  const MatchStatus({
    super.key,
    required this.status,
  });

  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(8)),
        padding:const  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          status,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 12),
        ));
  }
}
