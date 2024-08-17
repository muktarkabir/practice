// import 'package:hello_again_dart/hello_again_dart.dart' as hello_again_dart;

void main() {
  // final time = Duration(hours: 2, minutes: 2, seconds: 3);
  // final hours = '${time.inHours}'.padLeft(2, '0'),
  //     minutes = '${time.inMinutes % 60}'.padLeft(2, '0'),
  //     seconds = '${time.inSeconds % 60}'.padLeft(2, '0');

  // final timeString = '$hours:$minutes:$seconds';
  // print(timeString);

  // const csvFileLine = 'Martin,Emma,12,Paris,France';
  // final fields = csvFileLine.split(',');
  // print(fields);

  // final joined = fields.join('_');
  // print(joined);

  // const phrase = 'Live and Learn!';
  // final withUnderScores = phrase.replaceAll(' ', '_');
  // print(withUnderScores);

  // final regex = RegExp('cat');

  // print('con'.contains(regex));
  // final singleMatch = RegExp('c.?t');
  // print(singleMatch.hasMatch('ct'));
  // RegExp oneOrMore = RegExp('wo+w');

  // print(oneOrMore.hasMatch('ww'));

  // final set = RegExp('b[oa]t');
  // print(set.hasMatch('bat'));

  // final ranges = RegExp('[a-zA-Z]');
  // final excluded = RegExp('b[^oa]t');
  // print(excluded.hasMatch('bat'));
  // final escaped = RegExp(r'c\.t');
  // print(escaped.hasMatch('c.t'));
  // final onlyNumbers = RegExp(r'^[0-9]+$');
  // print(onlyNumbers.hasMatch('123443'));

  // const password = 'P!%sssssword1234';
  // final lowerCase = RegExp(r'[a-z]');
  // final upperCase = RegExp(r'[A-Z]');
  // final numbers = RegExp(r'[0-9]');
  // final special = RegExp('\\W');

  // if (password.length < 12) {
  //   print('Your password must contain at least 12 characters.');
  // } else if (!password.contains(lowerCase)) {
  //   print('Your password must contain a lowercase letter!');
  // } else if (!password.contains(upperCase)) {
  //   print('Your password must contain an uppercase letter!');
  // } else if (!password.contains(numbers)) {
  //   print('Your password must contain a number.');
  // } else if (!password.contains(special)) {
  //   print('Your password must contain at least one special character');
  // } else {
  //   print('Password is okay');
  // }

  // const creditCardNumber = '4686458468468468';
  // final RegExp onlyNumbers = RegExp(r'^[0-9]+$');
  // final RegExp goodLenght = RegExp(r'.{16}');

  // if (creditCardNumber.contains(onlyNumbers) &&
  //     creditCardNumber.contains(goodLenght)) {
  //   print('Valid Credit Card Number');
  // } else {
  //   print('Invalid!!!!');
  // }
//   const htmlText = '''
// <!DOCTYPE html>
// <html>
// <body>
// <h1>Dart Tutorial</h1>
// <p>Dart is my favorite language.</p>
// </body>
// </html>
// ''';

//   final start = htmlText.indexOf('<h1>') + '<h1>'.length;
//   final end = htmlText.indexOf('</h1>');
//   final heading = htmlText.substring(start, end);
//   print(heading);

//   const text = '''
// <h1>Dart Tutorial</h1>
// <h1>Flutter Tutorial</h1>
// <h1>Other Tutorials</h1>
// ''';

  // var position = 0;
  // while (true) {
  //   var start = text.indexOf("<h1>", position) + "<h1>".length;
  //   var end = text.indexOf("</h1>", position);

  //   if (start == -1 || end == -1) {
  //     break;
  //   }
  //   final heading = text.substring(start, end);
  //   position = end + '</h1>'.length;
  //   print(heading);
  // }

  // final headings = RegExp('<h1>(.+)</h1>');
  // final matches = headings.allMatches(text);
  // for (var match in matches) {
  //   print(match.group(1));
  // }

  // final emailRegex = RegExp(r'^\w+@\w+\.\w+$');

  // print(emailRegex.hasMatch('me@example.com'));

  // const lyrics = '[00:12.34]Row, row, row your boat';

  // final minuteses = lyrics.substring(1, 3);
  // final secondses = lyrics.substring(4, 6);
  // final hundreth = lyrics.substring(7, 9);
  // print(minuteses);
  // print(secondses);
  // print(hundreth);

  // final theRegex = RegExp(r'^\[(\d+)\:(\d+)\.(\d+)\](.+)$');

  // final matched = theRegex.allMatches(lyrics);
  // int group = 0;
  // for (var match in matched) {
  //   print(match.group(group));
  //   group++;
  // }

  // final Map<String, String> flowerColor = {'roses': 'red', 'violets': 'blue'};

  // flowerColor.forEach((key, value) {
  //   print('$key are $value');
  // });
  // print('i \u2764  Dart');
  // print('and so do you');
//   const numbers = [2, 4, 6, 8, 10, 12];

//   final mapped = numbers.map((e) => e * e);
//   print(mapped.toList());

  // final myList = [1, 2, 3, 4, 5, 6];
  // final odds = myList.where((element) => element.isOdd);
//   print(odds);

//   const evens = [2, 4, 6, 8, 10, 12];
//   final total = evens.reduce((value, element) => value + element);
//   print(total);

//   final emptyList = <int>[];
//   final result = emptyList.fold<int>(0, (value, element) => value + element);
//   print(result);

//   final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
//   desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
//   print(desserts);

// //Declarative
//   final bigTallDesserts = desserts
//       .where((element) => element.length > 5)
//       .map((dessert) => (dessert.toUpperCase()));
//   print(bigTallDesserts.toList());
//   //Imperative
//   final tallDesserts = <String>[];
//   for (var dessert in desserts) {
//     if (dessert.length > 5) {
//       tallDesserts.add(dessert.toUpperCase());
//     }
//   }
//   print(tallDesserts);

  // final scores = <int>[89, 77, 46, 93, 82, 67, 32, 88];

  // scores.sort((a, b) => a.compareTo(b));
  // final bGrades = scores.where((score) => (score >= 80 && score <= 90));
  // print(bGrades);

  // final myButton =
  //     Button(title: "launch", onPressed: () => print('Launching Missles'));

  // myButton.onPressed();
  // myButton.onPressed.call();

  // final widjet = MyWidget(onTouch: (x) => print(x));
  // widjet.onTouch(3.14);

  // final myOtherwidget =
  //     AnotherWidget(timestamp: () => DateTime.now().toIso8601String());

  // final timeStamp = myOtherwidget.timestamp?.call();
  // print(timeStamp);

  // final manager = StateManager();

  // final managerButton =
  //     Button(title: 'CLick mE', onPressed: manager.handleButtonClick);

  // scores.forEach(print);

  // ZipCode code = 32;
  // print(code is ZipCode);

  // final surface = Surface(onTouch: (x, y) => print('$x,$y'));
  // print('--------------------------------');
  // surface.touch(200.2, 400.6);

  // final jon = Person('Jon', 'Snow');
  // final jane = Student('Jane', 'Snow');

  // print(jon.fullName);
  // divider();
  // print(jane.fullName);
  // final historyGrade = Grade.B;
  // jane.grades.add(historyGrade);
  // jane.roles.add(Role.athlete);
  // print(jane.roles);
  // final student = Student('M', 'K');
  // student.roles
  //     .addAll([Role.athlete, Role.bandMember, Role.studentUnionMember]);

  // print(student.roles);

  // for (var grade in jane.grades) {
  //   print(grade.name);
  // }
  // divider();
  // final jessie = SchoolBandMember('Jessie', 'Jones');
  // final marty = StudentAthlete('Marty', 'McFly');

  // final students = [jane, jessie, marty];

  // print(jessie is! StudentAthlete);

  // Animal platypus = Platypus();
  // print(platypus.isAlive);
  // platypus.eat();
  // platypus.move();

  // print(platypus);

  // final eagle = Eagle();
  // print(eagle);

  // final dataBase = LocalStorrage();
  // dataBase.saveDate('myValuabeData');
  // print(dataBase.retrieveData());

  // final sodaBottle = Bottle();
  // sodaBottle.open();
  // noteChallenge();

  // final platypus = Platypus();
  // platypus.layEggs();
  // final robin = Robin();
  // robin
  //   ..layEggs()
  //   ..fly();
  // calc();

  // final original = 'I like extensions!';
  // final secret = original.encoded;
  // final revealed = secret.decoded;
  // print(secret);
  // print(revealed);
  // print(5.cubed);

  // final easterEgg = r'Uif!tfdsfu!up!mfbsojoh!Ebsu!xfmm!jt!up!dg"ewtkqwu"cpf"lwuv"vt{"vjkpiu0"Vlqfh#|rx*uh#uhdglqj#wklv/#wkdw#reylrxvo|#ghvfulehv#|rx1#Kssh$nsf%';

  // final decodedEasterEgg = easterEgg.decoded;
  // print(decodedEasterEgg);

  // extensionChallenge();

}

void divider() => print('------------------------------');

class Button {
  Button({required this.title, required this.onPressed});

  final String title;
  final void Function() onPressed;
}

class MyWidget {
  MyWidget({required this.onTouch});
  final void Function(double xPosition) onTouch;
}

class AnotherWidget {
  AnotherWidget({this.timestamp});
  final String Function()? timestamp;
}

class StateManager {
  int _counter = 0;

  void handleButtonClick() => _counter++;
}

class Gizmo {
  Gizmo({required this.builder});
  final MapBuilder builder;
}

typedef MapBuilder = Map<String, int> Function(List<int>);

typedef ZipCode = int;

typedef TouchHandler = void Function(double x, double y);

class Surface {
  Surface({required this.onTouch});
  final TouchHandler onTouch;

  void touch(double x, double y) {
    onTouch(x, y);
  }
}

Function countingFunction() {
  var counter = 0;
  incrementCounter() {
    counter += 1;
    return counter;
  }

  return incrementCounter;
}

enum Grade { A, B, C, D, E, F }

class Person {
  Person(this.firstName, this.lastName);
  String firstName, lastName;

  String get fullName => '$firstName $lastName';

  @override
  String toString() {
    return fullName;
  }
}

class Student extends Person {
  Student(super.firstName, super.lastName);

  var grades = <Grade>[];
  var roles = <Role>[];

  @override
  String get fullName => '$lastName,$firstName';
}

//Challenge
enum Role { athlete, bandMember, studentUnionMember }

class SchoolBandMember extends Student {
  SchoolBandMember(super.firstName, super.lastName);

  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(super.firstName, super.lastName);

  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

class SomeParent {
  void doSomeWork() {
    print('Parent doing some work');
  }
}

class SomeChild extends SomeParent {
  @override
  void doSomeWork() {
    super.doSomeWork();
    print('Child doing some other work');
  }
}

class Fruit {
  Fruit(this.color);
  final String color;
  void describeColor() => print('The color of this here fruit is $color.');
}

class Melon extends Fruit {
  Melon(super.color);

  @override
  void describeColor() {
    super.describeColor();
    print('This is a $color $runtimeType');
  }
}

class WaterMelon extends Melon {
  WaterMelon(super.color);
}

class Cantaloupe extends Melon {
  Cantaloupe(super.color);
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    if (startsWithAVowel(runtimeType.toString())) {
      return 'I am an $runtimeType';
    }
    return 'I am a $runtimeType';
  }
}

//This is me using a switch statement
bool startsWithAVowel(String word) {
  final firstLetter = word.substring(0, 1).toLowerCase();
  switch (firstLetter) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      return true;
    default:
      return false;
  }
}

enum Vowels { a, e, i, o, u }

// A concise version of the method
bool shorterCheck(String word) {
  for (var vowel in Vowels.values) {
    if (word.startsWith(vowel.name)) {
      return true;
    }
  }
  return false;
}

class Platypus extends Animal with EggLayer implements Comparable<Platypus> {
  Platypus({required this.weight});
  final double weight;
  @override
  void eat() {
    print('Munch Munch');
  }

  @override
  void move() {
    print('Glide Glide');
  }

  @override
  int compareTo(Platypus other) {
    if (weight > other.weight) {
      return 1;
    } else if (weight < other.weight) {
      return -1;
    }
    return 0;
  }
}

class Eagle extends Animal {
  @override
  void eat() {
    print('eating with my sharp beak');
  }

  @override
  void move() {
    print('Flies away');
  }
}

//
// Abstract classes challenge

abstract class Storage {
  void saveDate(String data) => print('Data storage not implemented');
  String retrieveData() {
    print('Data retrieval not implemented');
    return '';
  }
}

class LocalStorrage extends Storage {
  String _data = '';
  @override
  void saveDate(String data) {
    print('Saving $data to the database...');
    _data = data;
  }

  @override
  String retrieveData() {
    print('Retrieving data from the database...');
    return _data;
  }
}

class CloudStorage extends Storage {
  String _data = '';
  @override
  void saveDate(String data) {
    print('Saving $data to the cloud...');
    _data = data;
  }

  @override
  String retrieveData() {
    print('Retrieving data from the cloud...');
    return _data;
  }
}

// Interfaces

abstract interface class DataRepository {
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

class AnotherClass {
  int myField = 32;

  void myMethod() => print(myField);
}

class SomeClass implements AnotherClass {
  @override
  int myField = 22;

  @override
  void myMethod() {
    print('Hello');
  }
}

// Interface Excrsises

abstract interface class Bottle {
  void open();

  factory Bottle() => SodaBottle();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz Fizz');
  }
}

// Interface Excersie two

abstract interface class NoteStorage {
  void getLastNote();
  Note findNote({required int id});
  List<Note> theNotes = [];
  List<Note> allNotes();
  factory NoteStorage() => FakeNoteDatabase();
  void saveNote(Note note);
}

class FakeNoteDatabase implements NoteStorage {
  @override
  void getLastNote() {
    final Note lastNote = theNotes.last;
    print(lastNote);
  }

  @override
  Note findNote({required int id}) {
    final Note errorNote = {'The note': 'Doesn\'t exist'};
    if ((id > theNotes.length - 1) || id < 0) {
      return errorNote;
    }
    return theNotes[id];
  }

  @override
  List<Note> theNotes = [
    {'Stuff': 'A bunch of valuable stuff.'},
    {'The end of humanity': 'Will be soon.'},
    {'Uhmm': 'The weather is cold today.'},
    {'Deep talk': 'Insert deep stuff here.'},
    {'Last Note': 'A bunch of stuff i wrote.'},
  ];

  @override
  List<Note> allNotes() {
    return theNotes;
  }

  @override
  void saveNote(Note note) {
    print('Saving Note..');
    theNotes.add(note);
  }
}

typedef Note = Map<String, String>;

void noteChallenge() {
  final notes = NoteStorage();
  notes.getLastNote();
  Note newNote = {'New-Note': 'New Discoveries.'};
  notes.saveNote(newNote);
  notes.getLastNote();
  List<Note> allMyNotes = notes.allNotes();
  print(allMyNotes.length);

  final fourthNote = notes.findNote(id: 3);
  print(fourthNote);
}

//Mixins

abstract class Bird {
  void fly();
  void layEggs();
}

class Robin extends Bird with EggLayer, Flyer {}

mixin EggLayer {
  void layEggs() {
    print('Plop-Plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh Swoosh');
  }
}

//Mixin Excersise

class Calculator with Adder {}

//Adder mixin
mixin Adder {
  void sum({required num a, required num b}) {
    final theSum = a + b;
    print('The sum of $a and $b is $theSum.');
  }
}

void calc() {
  Calculator calculator = Calculator();

  calculator.sum(a: 34.4, b: 33);
}
// Extension methods

String encode(String input) {
  final output = StringBuffer();
  for (var codePoint in input.runes) {
    output.writeCharCode(codePoint + 1);
  }
  return output.toString();
}

extension on String {
  String get encoded => _code(1);

  String get decoded => _code(-1);

  String _code(int step) {
    final output = StringBuffer();
    for (var codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}

extension on int {
  int get cubed => this * this * this;

//Challenge
  Duration get minutes => Duration(minutes: this);
}

//Extension Excersise ^^

void extensionChallenge() {
  print(78888.cubed);
  print(5.minutes);
}
