import 'package:flutter/material.dart';

class BestForYou extends StatelessWidget {
  final String type;
  final String time;
  final String level;
  const BestForYou({super.key,
  required this.type,
    required this.time,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      width: 213,
      height: 36,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            type,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            time,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            level,
          ),
        ],
      ),
    );
  }
}