class Question {
  final int? id, answer;
  final String question;
  final List<String>? options;

  Question({ required this.id,  required this.question,  required this.answer,  required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Find the time if in an analog clock , the hour hand is at 9 and the minute hand makes an angle of 90 degree with the hour hand ?",
    "options": ['9.00', '9.30',],
    "answer": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['June 2017', 'May 2017', ],
    "answer": 0,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": [ 'Char', 'Word'],
    "answer": 1,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": [ 'Cout', 'Output'],
    "answer": 0,
  },
];
