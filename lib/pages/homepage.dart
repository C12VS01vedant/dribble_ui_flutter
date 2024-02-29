import 'package:dribble_ui/util/emotional_faces.dart';
import 'package:dribble_ui/util/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            //
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hi, Anonymous!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '21 Feb 2024',
                              style: TextStyle(color: Colors.blue[100]),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(12),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // search bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Row(
                        children: [
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // how do you feel?
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // 4 different faces
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😔',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Bad',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '☺️',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'fine',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😌',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Well',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😃',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Excellent',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ]),
                  ],
                )),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        // exercise heading
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exercises',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // Listview of exercises.
                        Expanded(
                            child: ListView(
                          children:  const [ExerciseTile(
                            icon: Icons.favorite,
                            numberOFExercises: 15,
                            exerciseName: 'Speaking Skills',
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            numberOFExercises: 10,
                            exerciseName: 'Reading Skills',
                            color: Colors.green,
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            numberOFExercises: 12,
                            exerciseName: 'Writing Skills',
                            color: Colors.pink,
                          ),
                          ],
                        ))
                      ],
                    ),
                  )),
            )
          ],
        )));
  }
}
