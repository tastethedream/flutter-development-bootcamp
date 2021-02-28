# Dart Classes and Objects

- Class names start with a capital letter

- Add a constructor to your class

```
class Question {
  String questionText;
  bool questionAnswer;

  Question({String q, bool a}) {

    questionText = q;
    questionAnswer = a;
  }
}
```

f you have creted a new dart file for your class impoert it in `main.dart`

`import 'question.dart';`

```
List<Question> questionBank = [
    Question(
      q: 'You can lead a cow down stairs but not up stairs.',
      a: false,
    ),
    Question(
      q: 'Approximately one quarter of human bones are in the feet.',
      a: true,
    ),
    Question(
      q: 'A slug\'s blood is green.',
      a: true,
    )
  ];
```

```
 bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;
                if (correctAnswer == true) {
                  print('user got it right');
                } else {
                  print('user got it wrong');
                }

```

## The four pillars of OOP

### Abstraction

- Splitting out functionality into seperate components

- Allows you to build more complex systems with easier to read and manage code


### Encapsulation

- Keeping things seperate

- Add an underscore in front of the property name to make it private `_questionBank`

- 

### Inheritance

- When a class is able to inherit properties and methods from their parents.

- `extends` is the dart keyword

`class electricCar extends Car{}`

### Polymorphism

- Changing shapes

- Allows inherited properties to be customised

- `@override`

```
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}
```


- `super` - super class 

