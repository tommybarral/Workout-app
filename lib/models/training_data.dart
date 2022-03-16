import 'package:workout_app/models/training.dart';

class TrainingInfo {
  List<Training> _program = [
    Training(
        title: 'Squat and Walk',
        time: '45 seconds',
        thumbnail: 'embed/squat1.png',
        videoUrl: 'videoUrl',
    ),
    Training(
        title: 'Plie squat and Heel raises',
        time: '55 seconds',
        thumbnail: 'embed/squat2.png',
        videoUrl: 'videoUrl',
    ),
    Training(
        title: 'Squat kickback',
        time: '60 seconds',
        thumbnail: 'embed/squat3.png',
        videoUrl: 'videoUrl',
    ),
  ];

  List<Training> get program {
    return [..._program];
  }
}