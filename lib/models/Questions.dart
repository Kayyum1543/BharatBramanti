class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Total number of districts in Andhra Pradesh",
    "options": ['10', '12', '13', '17'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "which one is the only constituency from where NT Rama Rao defeated in assembly election",
    "options": ['Kalwakurthy', 'Hindupur', 'Tekkali', 'Nalgonda'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "The Ramoji Film City was established in the year",
    "options": ['1993', '1996', '1998', '2001'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Before Hyderabad was made capital in 1956, which city was the capital of A.P?",
    "options": ['Warangal', 'Vijaywada', 'Vishakhapatnam', 'Kurnool'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "In which district, the Tirumala Venkateswara Temple is located",
    "options": ['Chittoor', 'Krishna', 'Kurnool', 'Vizianagaram'],
    "answer_index": 0,
  },

  {
    "id": 6,
    "question": "In which year the Telengana state is seperated from Andhra Pradesh",
    "options": ['2011', '2012', '2013', '2014'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "Which city is largest areawise in Andhra Pradesh?",
    "options": ['Hyderabad', 'Vijaywada', 'Vishakhapatnam', 'Guntur'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "Which one is the first telugu newspaper",
    "options": ['Satya Doota', 'Andhra Patrika', 'Desabhimini', 'Bharati'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Which one is one of the largest dam in Andhra Pradesh?",
    "options": ['Sriram Sagar', 'Srisailam', 'Nagarjuna Sagar', 'Somasila'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "When the Andhra University was established?",
    "options": ['1920', '1926', '1930', '1937'],
    "answer_index": 1,
  },
];
