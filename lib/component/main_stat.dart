import 'package:flutter/material.dart';

class MainStat extends StatelessWidget {
  final double width;
  final String category;
  final String imgPath;
  final String level;
  final String stat;

  const MainStat({
    required this.width,
    required this.category,
    required this.imgPath,
    required this.level,
    required this.stat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ts = TextStyle(
      color: Colors.black,
    );

    return SizedBox(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            category,
            style: ts,
          ),
          const SizedBox(height: 8.0),
          Image.asset(
            imgPath,
            width: 50.0,
          ),
          const SizedBox(height: 8.0),
          Text(
            level,
            style: ts,
          ),
          Text(
            stat,
            style: ts,
          ),
        ],
      ),
    );
  }
}
