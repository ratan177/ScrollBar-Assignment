import 'package:flutter/material.dart';

class Athlete {
  final String name;
  final String level;

  Athlete({required this.name, required this.level});
}

class HorizontalScrollableBar extends StatelessWidget {
  final List<Athlete> athletes = [
    Athlete(name: 'Abhishek', level: 'Basic'),
    Athlete(name: 'Tarun', level: 'Intermediate'),
    Athlete(name: 'Mohan', level: 'Advanced'),
    Athlete(name: 'Mohan', level: 'Intermediate'),
    Athlete(name: 'Raja', level: 'Basic'),
    Athlete(name: 'Ratan', level: 'Advanced'),
    Athlete(name: 'Ramana', level: 'Intermediate'),
    Athlete(name: 'Rana', level: 'Basic'),
    Athlete(name: 'Hassan', level: 'Intermediate'),
    Athlete(name: 'Aksaan', level: 'Advanced'),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        LevelColumn(
          levelName: 'Basic',
          athletes: _getAthletesByLevel('Basic'),
        ),
        LevelColumn(
          levelName: 'Intermediate',
          athletes: _getAthletesByLevel('Intermediate'),
        ),
        LevelColumn(
          levelName: 'Advanced',
          athletes: _getAthletesByLevel('Advanced'),
        ),
      ],
    );
  }

  List<Athlete> _getAthletesByLevel(String level) {
    return athletes.where((athlete) => athlete.level == level).toList();
  }
}

class LevelColumn extends StatelessWidget {
  final String levelName;
  final List<Athlete> athletes;

  LevelColumn({required this.levelName, required this.athletes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              levelName,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: athletes
                .map((athlete) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            athlete.name,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.022),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
