
import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  PointsCounterState createState() => PointsCounterState();
}

class PointsCounterState extends State<PointsCounter> {
  int teamAScore = 0;
  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF199094),
          title: const Text('Points Counter'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "$teamAScore",
                      style: const TextStyle(fontSize: 150),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF199094),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAScore++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF199094),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAScore += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Points',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF199094),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAScore += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Points',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                 const VerticalDivider(
                  width: 40,
                  thickness: 3,
                  color: Colors.black12,
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "$teamBScore",
                      style: const TextStyle(fontSize: 150),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF199094),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBScore++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF199094),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBScore += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Points',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF199094),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBScore += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Points',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF199094),
              ),
              onPressed: () {
                setState(() {
                  teamAScore = 0;
                  teamBScore = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
