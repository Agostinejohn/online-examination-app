import 'package:flutter/material.dart';

class ViewExamsScreen extends StatelessWidget {
  const ViewExamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulated list of exams with advanced questions
    final List<Map<String, dynamic>> exams = [
      {
        'title': 'Math Exam',
        'description': 'Algebra, Geometry, Calculus',
        'questions': [
          {
            'question': 'What is the integral of x^2?',
            'options': ['x^3/3', 'x^2/2', '2x', 'x^3'],
            'correctAnswer': 'x^3/3'
          },
          {
            'question': 'Solve for x: 2x + 3 = 11',
            'options': ['4', '2', '1', '3'],
            'correctAnswer': '4'
          },
          {
            'question': 'What is the derivative of sin(x)?',
            'options': ['cos(x)', '-sin(x)', 'sin(x)', '-cos(x)'],
            'correctAnswer': 'cos(x)'
          },
          {
            'question': 'What is the area of a circle with radius r?',
            'options': ['πr^2', '2πr', 'πr', 'πr^3'],
            'correctAnswer': 'πr^2'
          },
          {
            'question': 'Solve for y: y = mx + b when x = 2, m = 3, b = 4',
            'options': ['10', '8', '7', '6'],
            'correctAnswer': '10'
          },
          {
            'question': 'What is the limit of (1/x) as x approaches 0?',
            'options': ['Infinity', '0', '1', '-Infinity'],
            'correctAnswer': 'Infinity'
          },
          {
            'question': 'Find the value of log(100)',
            'options': ['2', '1', '0', '10'],
            'correctAnswer': '2'
          },
          {
            'question': 'What is the cosine of 0 degrees?',
            'options': ['1', '0', '-1', 'Undefined'],
            'correctAnswer': '1'
          },
          {
            'question': 'What is the quadratic formula?',
            'options': ['x = (-b ± √(b²-4ac))/2a', 'x = b²-4ac', 'x = 2a/b', 'x = (-b + √(b²-4ac))/2a'],
            'correctAnswer': 'x = (-b ± √(b²-4ac))/2a'
          },
          {
            'question': 'What is the sum of the angles in a triangle?',
            'options': ['180 degrees', '360 degrees', '90 degrees', '270 degrees'],
            'correctAnswer': '180 degrees'
          },
        ],
      },
      {
        'title': 'Science Exam',
        'description': 'Physics, Chemistry, Biology',
        'questions': [
          {
            'question': 'What is the chemical formula for water?',
            'options': ['H2O', 'CO2', 'NaCl', 'O2'],
            'correctAnswer': 'H2O'
          },
          {
            'question': 'What planet is known as the Red Planet?',
            'options': ['Mars', 'Venus', 'Jupiter', 'Saturn'],
            'correctAnswer': 'Mars'
          },
          {
            'question': 'Who proposed the theory of relativity?',
            'options': ['Albert Einstein', 'Isaac Newton', 'Niels Bohr', 'Galileo Galilei'],
            'correctAnswer': 'Albert Einstein'
          },
          {
            'question': 'What is the powerhouse of the cell?',
            'options': ['Mitochondria', 'Nucleus', 'Ribosome', 'Chloroplast'],
            'correctAnswer': 'Mitochondria'
          },
          {
            'question': 'What is the periodic table symbol for gold?',
            'options': ['Au', 'Ag', 'Pb', 'Pt'],
            'correctAnswer': 'Au'
          },
          {
            'question': 'What is the speed of light?',
            'options': ['3.0 x 10^8 m/s', '3.0 x 10^6 m/s', '3.0 x 10^7 m/s', '3.0 x 10^5 m/s'],
            'correctAnswer': '3.0 x 10^8 m/s'
          },
          {
            'question': 'What gas do plants absorb from the atmosphere?',
            'options': ['Carbon Dioxide', 'Oxygen', 'Nitrogen', 'Hydrogen'],
            'correctAnswer': 'Carbon Dioxide'
          },
          {
            'question': 'What is the primary function of the large intestine?',
            'options': ['Absorb water', 'Digest food', 'Filter blood', 'Produce hormones'],
            'correctAnswer': 'Absorb water'
          },
          {
            'question': 'What force keeps us on the ground?',
            'options': ['Gravity', 'Magnetism', 'Friction', 'Inertia'],
            'correctAnswer': 'Gravity'
          },
          {
            'question': 'What element is the most abundant in the Earth\'s atmosphere?',
            'options': ['Nitrogen', 'Oxygen', 'Hydrogen', 'Carbon Dioxide'],
            'correctAnswer': 'Nitrogen'
          },
        ],
      },
      {
        'title': 'History Exam',
        'description': 'Ancient, Medieval, Modern',
        'questions': [
          {
            'question': 'Who was the first President of the United States?',
            'options': ['George Washington', 'Thomas Jefferson', 'John Adams', 'James Madison'],
            'correctAnswer': 'George Washington'
          },
          {
            'question': 'In what year did World War II end?',
            'options': ['1945', '1941', '1939', '1950'],
            'correctAnswer': '1945'
          },
          {
            'question': 'Who was known as the Iron Lady?',
            'options': ['Margaret Thatcher', 'Angela Merkel', 'Indira Gandhi', 'Golda Meir'],
            'correctAnswer': 'Margaret Thatcher'
          },
          {
            'question': 'What was the main cause of the fall of the Roman Empire?',
            'options': ['Economic troubles', 'Military defeat', 'Plague', 'All of the above'],
            'correctAnswer': 'All of the above'
          },
          {
            'question': 'Who was the leader of the Soviet Union during World War II?',
            'options': ['Joseph Stalin', 'Vladimir Lenin', 'Nikita Khrushchev', 'Mikhail Gorbachev'],
            'correctAnswer': 'Joseph Stalin'
          },
          {
            'question': 'Which empire was known for its road system and military prowess?',
            'options': ['Roman Empire', 'Mongol Empire', 'British Empire', 'Ottoman Empire'],
            'correctAnswer': 'Roman Empire'
          },
          {
            'question': 'What was the primary purpose of the Great Wall of China?',
            'options': ['Defense', 'Trade', 'Transportation', 'Communication'],
            'correctAnswer': 'Defense'
          },
          {
            'question': 'Who was the first man to step on the moon?',
            'options': ['Neil Armstrong', 'Buzz Aldrin', 'Yuri Gagarin', 'John Glenn'],
            'correctAnswer': 'Neil Armstrong'
          },
          {
            'question': 'What document marked the end of the American Revolutionary War?',
            'options': ['Treaty of Paris', 'Magna Carta', 'Constitution', 'Bill of Rights'],
            'correctAnswer': 'Treaty of Paris'
          },
          {
            'question': 'What was the main trade route between Europe and Asia during the Middle Ages?',
            'options': ['Silk Road', 'Spice Route', 'Amber Road', 'Trans-Saharan Trade Route'],
            'correctAnswer': 'Silk Road'
          },
        ],
      },
      {
        'title': 'Literature Exam',
        'description': 'Poetry, Prose, Drama',
        'questions': [
          {
            'question': 'Who wrote "To Kill a Mockingbird"?',
            'options': ['Harper Lee', 'Mark Twain', 'J.K. Rowling', 'Ernest Hemingway'],
            'correctAnswer': 'Harper Lee'
          },
          {
            'question': 'Who is the author of "1984"?',
            'options': ['George Orwell', 'Aldous Huxley', 'Ray Bradbury', 'Isaac Asimov'],
            'correctAnswer': 'George Orwell'
          },
          {
            'question': 'In which Shakespeare play does the character Othello appear?',
            'options': ['Othello', 'Hamlet', 'Macbeth', 'King Lear'],
            'correctAnswer': 'Othello'
          },
          {
            'question': 'Who wrote "Pride and Prejudice"?',
            'options': ['Jane Austen', 'Charlotte Brontë', 'Emily Brontë', 'Mary Shelley'],
            'correctAnswer': 'Jane Austen'
          },
          {
            'question': 'What is the first book of the Old Testament?',
            'options': ['Genesis', 'Exodus', 'Leviticus', 'Numbers'],
            'correctAnswer': 'Genesis'
          },
          {
            'question': 'Who wrote "The Odyssey"?',
            'options': ['Homer', 'Virgil', 'Sophocles', 'Euripides'],
            'correctAnswer': 'Homer'
          },
          {
            'question': 'Which novel begins with "Call me Ishmael"?',
            'options': ['Moby Dick', 'The Old Man and the Sea', 'Heart of Darkness', 'Invisible Man'],
            'correctAnswer': 'Moby Dick'
          },
          {
            'question': 'Who wrote "The Raven"?',
            'options': ['Edgar Allan Poe', 'Robert Frost', 'Walt Whitman', 'Emily Dickinson'],
            'correctAnswer': 'Edgar Allan Poe'
          },
          {
            'question': 'Which character in "The Great Gatsby" is known for throwing extravagant parties?',
            'options': ['Jay Gatsby', 'Nick Carraway', 'Tom Buchanan', 'Daisy Buchanan'],
            'correctAnswer': 'Jay Gatsby'
          },
          {
            'question': 'Who wrote "Crime and Punishment"?',
            'options': ['Fyodor Dostoevsky', 'Leo Tolstoy', 'Anton Chekhov', 'Vladimir Nabokov'],
            'correctAnswer': 'Fyodor Dostoevsky'
          },
        ],
      },
      {
        'title': 'Geography Exam',
        'description': 'Physical, Human, Environmental',
        'questions': [
          {
            'question': 'What is the largest desert in the world?',
            'options': ['Sahara', 'Arabian', 'Gobi', 'Antarctic'],
            'correctAnswer': 'Antarctic'
          },
          {
            'question': 'Which is the longest river in the world?',
            'options': ['Nile', 'Amazon', 'Yangtze', 'Mississippi'],
            'correctAnswer': 'Nile'
          },
          {
            'question': 'What is the capital of Australia?',
            'options': ['Canberra', 'Sydney', 'Melbourne', 'Brisbane'],
            'correctAnswer': 'Canberra'
          },
          {
            'question': 'Which country has the most natural lakes?',
            'options': ['Canada', 'USA', 'Russia', 'Brazil'],
            'correctAnswer': 'Canada'
          },
          {
            'question': 'Mount Everest is located in which mountain range?',
            'options': ['Himalayas', 'Andes', 'Rockies', 'Alps'],
            'correctAnswer': 'Himalayas'
          },
          {
            'question': 'Which ocean is the largest by surface area?',
            'options': ['Pacific', 'Atlantic', 'Indian', 'Arctic'],
            'correctAnswer': 'Pacific'
          },
          {
            'question': 'What is the capital city of Japan?',
            'options': ['Tokyo', 'Osaka', 'Kyoto', 'Nagoya'],
            'correctAnswer': 'Tokyo'
          },
          {
            'question': 'What is the smallest country in the world by area?',
            'options': ['Vatican City', 'Monaco', 'Nauru', 'San Marino'],
            'correctAnswer': 'Vatican City'
          },
          {
            'question': 'Which continent is the Sahara Desert located in?',
            'options': ['Africa', 'Asia', 'Australia', 'South America'],
            'correctAnswer': 'Africa'
          },
          {
            'question': 'What is the official language of Brazil?',
            'options': ['Portuguese', 'Spanish', 'English', 'French'],
            'correctAnswer': 'Portuguese'
          },
        ],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('View Exams'),
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(exams[index]['title']),
              subtitle: Text(exams[index]['description']),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/take_exam',
                    arguments: exams[index],
                  );
                },
                child: const Text('Take Exam'),
              ),
            ),
          );
        },
      ),
    );
  }
}
