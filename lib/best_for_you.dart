import 'package:flutter/material.dart';

class BestForYou extends StatelessWidget {
  final String type;
  final String time;
  final String level;
  final String image;
  const BestForYou({
    super.key,
    required this.type,
    required this.time,
    required this.level,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        width: 213,
        height: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                width: 100, // Adjust the width of the image container as needed
                height:
                    100, // Adjust the height of the image container as needed
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 18,
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100,
                      borderRadius: BorderRadius.circular(2)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      time,
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100,
                      borderRadius: BorderRadius.circular(2)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      level,
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
