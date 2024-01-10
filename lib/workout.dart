import 'package:flutter/material.dart';
import 'package:pyramid_developers/best_for_you.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF000000),
                            Color(0xFF000000),
                          ],
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.dstIn,
                      child: Image.asset(
                        'assets/images/image 2.png',
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Best Quarantine\nWorkout',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 50),
                            Row(
                              children: [
                                Text(
                                  'See more',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFBBF246),
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Color(0xFFBBF246),
                                  size: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Best for you',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
          ),
          Container(
              height: 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      
                      children: [
                        BestForYou(image: 'assets/images/image63.png',
                            type: 'Belly fat burner', time: '10 min', level: 'Beginner'),
                        BestForYou(image: 'assets/images/image65.png',
                            type: 'Lose Fat', time: '10 min', level: 'Beginner'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        BestForYou(
                            image: 'assets/images/Image.png',
                            type: 'Plank',
                            time: '10 min',
                            level: 'Beginner'),
                        BestForYou(
                            image: 'assets/images/Image (1).png',
                            type: 'Build Whider E',
                            time: '10 min',
                            level: 'Beginner'),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
