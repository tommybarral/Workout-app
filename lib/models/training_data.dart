import 'package:workout_app/models/training.dart';

class TrainingInfo {
  List<Training> _program = [
    Training(
        title: 'Squat and Walk',
        time: '45 seconds',
        thumbnail: 'images/ex1.jpg',
        videoUrl: 'videoUrl',
    ),
    Training(
        title: 'Plie squat and Heel raises',
        time: '55 seconds',
        thumbnail: 'images/ex2.jpg',
        videoUrl: 'videoUrl',
    ),
    Training(
        title: 'Squat kickback',
        time: '60 seconds',
        thumbnail: 'images/ex3.jpg',
        videoUrl: 'videoUrl',
    ),
    Training(
      title: 'Squat kickback',
      time: '60 seconds',
      thumbnail: 'images/ex4.jpg',
      videoUrl: 'videoUrl',
    ),
  ];

  List<Training> get program {
    return [..._program];
  }
}