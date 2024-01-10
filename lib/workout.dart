import 'package:flutter/material.dart';
import 'package:pyramid_developers/best_for_you.dart';
import 'package:pyramid_developers/fast_warmup.dart';
import 'package:pyramid_developers/navbar.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  Positioned(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 25.0, left: 20.0, right: 20.0),
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
                                  GestureDetector(
                                    onTap: () {
                                      print('Detected');
                                    },
                                    child: Text(
                                      'See more',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFBBF246),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('detected1');
                                    },
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Color(0xFFBBF246),
                                      size: 20,
                                    ),
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
                height: 230,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          BestForYou(
                              image: 'assets/images/image63.png',
                              type: 'Belly fat burner',
                              time: '10 min',
                              level: 'Beginner'),
                          BestForYou(
                              image: 'assets/images/image65.png',
                              type: 'Lose Fat',
                              time: '10 min',
                              level: 'Beginner'),
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
                )),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Challenge',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
                height: 120,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Color(0xFFBBF246),
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.fireplace_outlined,
                                        color: Colors.grey.shade200,
                                        size:
                                            80, 
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Plank\nChallenge',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 10),
                            Container(
                              height: 100,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Color(0xFF192126),
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.sports_gymnastics_outlined,
                                        color: Colors.grey.shade200,
                                        size:
                                            80, 
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Sprint\nChallenge',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 10),
                            Container(
                              height: 100,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.local_drink_outlined,
                                        color: Color(0xFFBBF246),
                                        size:
                                            80, 
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Squat\nChallenge',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Fast Warmup',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [
                        FastWarmup(
                          image: 'assets/images/Image.png',
                          type: 'Leg Exercise',
                          time: '10 min',
                          level: 'Beginner',
                        ),
                        FastWarmup(
                          image: 'assets/images/Image.png',
                          type: 'Backward lun',
                          time: '5 min',
                          level: 'Beginner',
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        FastWarmup(
                          image: 'assets/images/Image.png',
                          type: 'Leg Exercise',
                          time: '10 min',
                          level: 'Beginner',
                        ),
                        FastWarmup(
                          image: 'assets/images/Image.png',
                          type: 'Leg Exercise',
                          time: '10 min',
                          level: 'Beginner',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomNavBar()
          ],
        ),
      ),
    );
  }
}
