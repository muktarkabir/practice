import 'dart:math';
import 'package:characters/characters.dart';
import 'package:hello_dart/user.dart';
import 'package:hello_dart/math.dart' as math;
import 'dart:convert';
import 'package:hello_dart/squares.dart';

void main() {
  // print(32.124.round());
  // int myAge = 22;
  // int ahmadAge = 22;
  // double averageAge = (myAge + ahmadAge) / 2;
  // print(averageAge);
  // const testNumber = 87.64;
  // const evenOdd = testNumber % 2;
  // print('the number is:$evenOdd');
  // const x = 46;
  // const y = 10;
  // const answer1 = (x * 100) + y;
  // const answer2 = (x * 100) + (y * 100);
  // const answer3 = (x * 100) + (y / 10);
  // print('$answer1 $answer2 $answer3');

  // const rating1 = 33.2;
  // const rating2 = 63.2;
  // const rating3 = 102.2;

  // const averageRating = (rating1 + rating2 + rating3) / 2;
  // print(averageRating.toStringAsFixed(5));

  // double a = 2.0;
  // double b = 3.0;
  // double c = 1.0;

  // double root1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
  // double root2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
  // if ((b * b - 4 * a * c) > 0) {
  //   print(root1);
  //   print(root2);
  // } else {
  //   print('No real roots');
  // }

  // const hourlyRate = 19.5;
  // const hoursWorked = 10;
  // final totalCost = (hourlyRate * hoursWorked).toInt();
  // print(totalCost);

  // const age1 = 42;
  // const age2 = 21;
  // const averageAge = (age1 + age2) / 2;
  // print(averageAge);

  // const attendance = 90 / 100;
  // const homework = 80 / 100;
  // const exam = 94 / 100;

  // const grade = (attendance * 20) + (homework * 30) + (exam * 50);

  // final result = '${grade.toInt()} %';
  // print(result);

  // const emoji = '📓😵‍💫';
  // print(emoji.codeUnits);

  // const flag = '🇲🇳';
  // print(flag.runes);

  // const family = '👨‍👩‍👧‍👦';
  // print('$family,${family.runes},${family.length},${family.codeUnits.length}');
  // print(family.characters.length);

//   const bigString = '''
// A really big and long string,what you do with it

//  nigga!!!!''';

//   print(bigString);
//   calculate(28);
//   print('I love \u{1F3AF}');

  // const twocountries = '🇹🇩🇷🇴';

  // print(twocountries.codeUnits);
  // print(twocountries.runes);

  // const vote = 'Thumbs up! 👍🏿';
  // print(vote.codeUnits.length); //code units
  // print(vote.runes.length); //code points
  // print(vote.characters.length); //grapheme clusters

  // const number = 10;
  // const multiplier = 5;
  // final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  // print(summary);

  // const myAge = 22;

  // myAge >= 13 && myAge <= 19 ? print('A teenager') : print('Not a teenager');

  // var weatherToday = Weather.cloudy;

  // switch (weatherToday) {
  //   case Weather.sunny:
  //     print('Put on Sunscreen.');
  //   case Weather.rainy:
  //   case Weather.cloudy:
  //     print('Bring an Umbrlla.');
  //     break;
  //   case Weather.snowy:
  //     print('Bring your skies!');
  // }

  // print(weatherToday.index);

  // const audioState = AudioState.playing;

  // switch (audioState) {
  //   case AudioState.paused:
  //     print('Audio is paused.');
  //     break;
  //   case AudioState.playing:
  //     print('Audio is playing.');
  //     break;
  //     case AudioState.stopped:
  //     print('Audio is stopped.');
  // }

  // var counter = 0.0;

  // while (counter <= 10.0) {
  //   print('counter is $counter');
  //   counter += 0.5;
  // }

  // for (var i = 1; i <= 10; i++) {
  //   print('The square of $i is ${i * i}.');
  // }

  // const n = 10;
  // var current = 1;
  // var previous = 1;
  // var done = 2;
  // //done with first two fibonnaci sequence numbers
  // while (done < n) {
  //   final next = current + previous;
  //   //next number in the sequence
  //   previous = current;
  //   current = next;
  //   //reassign last two numbers
  //   done++;
  //   //incremnt the sequence
  // }
  // print('Fibonacci number $n is $current.');

  // var sum = 0;
  // var count = 0;
  // for (var i = 0; i <= 5; i++) {
  //   sum += i;
  //   count++;
  // }
  // print('The value of the sum is $sum after $count iterations.');

  // String muktar = youAreWonderful(name: 'Mukhtar', numberOfPeople: 5000000000);
  // print(muktar);

  // double theArea = circleArea(radius: 10);
  // print(theArea);

  // bool check = isNumberDivisible(5, 5);
  // print(check);

  // print(sqrt(2));

  // print(isPrime(2));

  // final user = User()
  //   ..name = 'SNape'
  //   ..id = 21;
  // print(user.toJson());

  // final myPassword = Password();
  // myPassword.plainText = r'Pa$$d';
  // final text = myPassword.plainText;
  // print(text);

  // final rectangle = Rectangle()
  //   ..width = -2.3
  //   ..height = -4.0;
  // print('width: ${rectangle.width}');
  // print('height: ${rectangle.height}');
  // print('area: ${rectangle.area}');

  // const user = User(id: 23, name: 'Lake');
  // print(user);
  // const anon = User.anonymous();
  // print(anon.toJson());

  // final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  // print(vicki);

  // final myNumber = PhoneNumber('08142540937');
  // print(myNumber.value);

  // final map = {'id': 10, 'name': 'Sandra'};
  // print(map.runtimeType);
  // final sandra = User.fromJson(map);
  // print(sandra);

  // final ernie = Student(firstName: 'Ernie', lastName: 'Henson', grade: 95);
  // final bert = Student(firstName: 'Bert', lastName: 'Oz', grade: 85);
  // print('$ernie\n$bert');

  // const red = Colors.red;
  // print(red);

//   print(math.max(2, 3)); // 3
//   print(math.min(2, 3));

  // const sphere = Sphere(radius: 12);
  // final volume = sphere.volume;
  // final area = sphere.area;
  // print('$volume\n$area');

  // int? age;

  // double? height;
  // String? message;
  // age = 2;
  // // ignore: dead_code
  // print(age?.isEven);

  // bool flowerisBeautiful = isBeautiful('flower')!;
  //Better alternative that wont crash app: bool flowerIsBeautiful = isBeautiful('flower') ?? true;

  // final ray = Name(givenName: 'Ray', surname: 'Wenderlich');
  // print(ray);
  // final liMing = Name(surname: 'Li', givenName: 'Ming', surnameIsFirst: true);
  // print(liMing);
  // final baatar = Name(givenName: 'Baatar');
  // print(baatar);

  // List? deserts = ['cookies', 'cupcakes', 'donuts', 'pie', 'chocolate'];
  // print(deserts[deserts.length - 1]);

  // final index = deserts.indexOf('chocolate');
  // final value = deserts[index];
  // print('The index $index has a value of $value.');
  // deserts.insert(1, 'element');
  // deserts.removeAt(0);

  // deserts.addAll(['iterable', 'brownies']);
  // print('$deserts has ${deserts.length} items.');
  // // List snacks = <String>['abba',...deserts];
  // // for (var snack in snacks) {
  // //   print(snack);
  // // }

  // final integers = [32, 73, 2, 343, 7, 10, 1];
  // integers.sort();
  // print(integers);

  // final months = <String>[];
  // months.addAll([
  //   'Janruary',
  //   'February',
  //   'March',
  //   'April',
  //   'May',
  //   'June',
  //   'July',
  //   'August',
  //   'September',
  //   'October',
  //   'November',
  //   'Deccember'
  // ]);
  // var marchInMonths = months.indexOf('March');
  // print(marchInMonths);
  // months.removeAt(marchInMonths);
  // print(months);
  // months.insert(2, 'March');
  // print(months);
  // final food = const ['ricxe', 'beans', 'onions'];
  // food.add('value');
  // final modifiableList = [DateTime.now(), DateTime.now()];
  // final unmodifiableList = List.unmodifiable(modifiableList);
  // print(unmodifiableList);

  // const numbers = [1, 2, 4, 7];

  // for (var i = 0; i < numbers.length; i++) {
  //   final number = numbers[i];
  //   print(squareThis(number));
  // }

  // for (var number in numbers) {
  //   final itsSquare = squareThis(number);
  //   print('The square of $number is $itsSquare');
  // }
//   List<String?>? drinks = ['milk', 'water', null, 'soda'];
// // 1
//   for (String? drink in drinks) {
// // 2
//     int letters = drink?.length ?? 0;
//     print(letters);
//   }

  // const strings = ['cookies', 'ice cream', 'cake', 'donuts', 'pie', 'brownies'];

  // String? longest;
  // String? shortest;

  // var lengthLongest = -1;
  // var lengthShortest = 1000000;

  // for (final dessert in strings) {
  //   final length = dessert.length;
  //   if (length > lengthLongest) {
  //     longest = dessert;
  //     lengthLongest = length;
  //   }
  //   if (length < lengthShortest) {
  //     shortest = dessert;
  //     lengthShortest = length;
  //   }
  // }

  // print('Longest: $longest');
  // print('Shortest: $shortest');

  // final myList = [
  //   'cookies',
  //   'ice cream',
  //   'cookies',
  //   'cake',
  //   'donuts',
  //   'pie',
  //   'brownies',
  // ];
  // containsRepition(myList);

  // challenge3();
  // final desserts = {'cake', 'donuts', 'juice'};
  // print(desserts.contains('cake'));

  // Set<String> animals = {'dog', 'cat', 'fish'};
  // animals.remove('fish');
  // print(animals);

  // print(animals.contains('sheep'));

  // final setA = {8, 2, 3, 1, 4};
  // final setB = {1, 6, 5, 4};

  // final intersection = setA.intersection(setB);
  // final union = setA.union(setB);
  // final differenceA = setA.difference(setB);
  // final differenceB = setB.difference(setA);

  // print(intersection);
  // print(union);
  // print(differenceA);
  // print(differenceB);

  // final nullSafe = {'Swift', 'Dart', 'Kotlin'};
  // final pointy = {'Sword', 'Pencil', 'Dart'};
  // final dWords = {'Dart', 'Dragon', 'Double'};
  // final intersection = nullSafe.intersection(pointy).intersection(dWords);
  // print(intersection);
  // final union = nullSafe.union(pointy).union(dWords);
  // print(union);

  // final randomGenerator = Random();
  // final randomIntList = <int>[];

  // for (var i = 0; i < 10; i++) {
  //   final randomInt = randomGenerator.nextInt(10) + 1;
  //   randomIntList.add(randomInt);
  // }
  // print(randomIntList);

  // final uniqueValues = <int>{};
  // final duplicates = <int>{};
  // for (var number in randomIntList) {
  //   if (uniqueValues.contains(number)) {
  //     duplicates.add(number);
  //   }
  //   uniqueValues.add(number);
  // }
  // print(uniqueValues);
  // print(duplicates);

  // challenge1();

  //Symmetric Difference
  // final setA = {8, 2, 3, 1, 4};
  // final setB = {1, 6, 5, 4};

  // final intersection = setA.intersection(setB);
  // final union = setA.union(setB);

  // final symmetricDifference = union.toSet();

  // for (var element in intersection) {
  //   symmetricDifference.remove(element);
  // }
  // print(symmetricDifference);

  // final inventory = {'cake': 20, 'pies': 14, 'donuts': 37, 'cookies': 141};
  // print(inventory);
  // final numberOfCakes = inventory['cake'];
  // print(numberOfCakes?.isEven);
  // inventory['brownies'] = 33;
  // print(inventory);

  // final myInfo = {
  //   'name': 'Mukhtar Kabir',
  //   'profession': 'Student',
  //   'country': 'Nigeria',
  //   'city': 'Kaduna'
  // };

  // myInfo['country'] = 'Canada';
  // myInfo['city'] = 'Toronto';

  // for (var entry in myInfo.entries) {
  //   print('${entry.key} => ${entry.value}');
  // }

  // final userObject = User(
  //   id: 1234,
  //   name: 'John',
  //   emails: [
  //     'john@example.com',
  //     'jhagemann@example.com',
  //   ],
  // );

  // final userMap = userObject.toJson();
  // print(userMap);

  // final userString = json.encode(userMap);
  // print(userString);

  // final jsonString =
  //     '{"id":4321,"name":"Marciaaaa","emails":["marcia@example.com"]}';

  // dynamic jsonMap = jsonDecode(jsonString);
  // print(jsonMap);

  // if (jsonMap is Map<String, dynamic>) {
  //   print('You\'ve got a map!!!');
  // } else {
  //   print('Your Json must have been in the wrong format.');
  // }

  // final marciaLady = User.fromJson(jsonMap);
  // print(marciaLady);

  // final bush = returnNumberOfOccurrencs('sneakeekessaprd');
  // print(bush);

  // final myWidjet = Widget(10, 20);

  // final myWidjetToMap = myWidjet.toJson();
  // final mywidjetToJson = jsonEncode(myWidjetToMap);
  // final myWidjetBackToMap = jsonDecode(mywidjetToJson);
  // final myWidjetFromMap = Widget.fromJson(myWidjetBackToMap);
  // print(myWidjetToMap);
  // print(mywidjetToJson);
  // print(myWidjetBackToMap);
  // print(myWidjetFromMap);

  // Iterable<String> myIterable = ['red', 'blue', 'green'];
  // final thirdElement = myIterable.elementAt(2);
  // print(thirdElement);
  // print(myIterable.length);

  // const map = {1: "one", 2: "two", 3: "three"};
  // print(map);
  // final my2Iterable = map.keys;
  // print(
  //     '${my2Iterable.first} & ${my2Iterable.last}, The lenght:${my2Iterable.length}');

  // for (var element in my2Iterable) {
  //   print('$element is this');
  // }

  // final squares = hundredSquares();

  final squares = HundredSquared();
  for (var square in squares) {
    print(square);
  }
}

void fibbonaci() {
  const n = 10;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  print('Fibonacci number $n is $current.');
}

Iterable<int> hundredSquares() sync* {
  for (int i = 0; i <= 100; i++) {
    yield i * i;
  }
}

void challenge1() {
  Set<String> uniqueCodePoints(String text) {
    final uniqueCharacters = <String>{};
    for (final codePoint in text.runes) {
      final character = String.fromCharCode(codePoint);
      uniqueCharacters.add(character);
    }
    return uniqueCharacters;
  }

  const paragraphOfText = 'Once upon a time there was a Dart programmer who '
      'had a challenging challenge to solve. Though the challenge was great, '
      'a solution did come. The end.';

  print(uniqueCodePoints(paragraphOfText));
}

void containsRepition(List<dynamic> listToCheck) {
  listToCheck.sort();
  dynamic previous;
  bool contains = false;
  for (final item in listToCheck) {
    if (item == previous) {
      print('$item at index ${listToCheck.indexOf(item)} is a duplicate.');
      contains = true;
    }
    previous = item;
  }
  if (!contains) {
    print('There are no duplicates.');
  }
}

void challenge3() {
  final myList = [9, 4, 2, 7, 3, 4, 1];
  for (int i = 0; i < myList.length; i++) {
    for (int j = i + 1; j < myList.length; j++) {
      if (myList[i] > myList[j]) {
        swap(myList, i, j);
        print(myList);
      }
    }
  }
  print(myList);
}

// Swaps the values at `indexA` and `indexB` in `list`.
void swap(List<int> list, int indexA, int indexB) {
  final temp = list[indexA];
  list[indexA] = list[indexB];
  list[indexB] = temp;
}

Map<String, int> returnNumberOfOccurrencs(String theString) {
  final mapOfFrequency = <String, int>{};

  for (var codePoint in theString.runes) {
    final character = String.fromCharCode(codePoint);
    final frequency = mapOfFrequency[character] ?? 0;
    mapOfFrequency[character] = frequency + 1;
  }
  return mapOfFrequency;
}

int squareThis(int number) {
  return number * number;
}

String youAreWonderful({required String name, int numberOfPeople = 30}) {
  return 'You are a wonderful person, $name, $numberOfPeople people think so too \u{1F970}.';
}

double circleArea({required double radius}) {
  return pi * (radius * radius);
}

bool isNumberDivisible(int number, int divisor) => number % divisor == 0;

bool isPrime(int numberToCheck) {
  if (numberToCheck <= 1) {
    return false; // 0 and 1 are not prime
  }
  if (numberToCheck == 2) {
    return true; // 2 is a prime number
  }
  for (var i = 2; i < numberToCheck; i++) {
    if (isNumberDivisible(numberToCheck, i)) {
      return false;
    }
  }
  return true;
}

bool isPositive(int anInteger) {
  return !anInteger.isNegative;
}

bool? isBeautiful(String? item) {
  if (item == 'flower') {
    return true;
  } else if (item == 'garbage') {
    return false;
  }
  return null;
}

enum Weather { sunny, snowy, cloudy, rainy }

enum AudioState { playing, paused, stopped }

class Password {
  String _plainText = 'pass12345%';

  String get plainText => _plainText;

  String get obfusecated {
    final length = _plainText.length;
    return '*' * length;
  }

  set plainText(String text) {
    if (text.length < 6) {
      print('Passwords must have 6 or more characters!');
      return;
    }
    _plainText = text;
  }
}

class Rectangle {
  double _width = 0;
  double _height = 0;

  double get width => _width;
  set width(double myWidth) {
    if (myWidth < 0) {
      print('Invalid: Values must not be negative numbers!');
      return;
    }
    _width = myWidth;
  }

  double get height => _height;
  set height(double myHeight) {
    if (myHeight < 0) {
      print('Invalid: Values must not be negative numbers!');
      return;
    }
    _height = myHeight;
  }

  double get area => _width * _height;
}

class PhoneNumber {
  PhoneNumber(this.value);

  final String value;
}

class Student {
  Student(
      {required this.firstName, required this.lastName, required this.grade});

  final String firstName;
  final String lastName;
  int grade;

  @override
  String toString() => 'Student($firstName $lastName, grade: $grade)';
}

class TextStyle {
  static const _defaultFontSize = 17.0;
  TextStyle({this.fontSize = _defaultFontSize});
  final double fontSize;
}

class Colors {
  static const int red = 0xFFD13F13;
  static const int purple = 0xFF8107D9;
  static const int blue = 0xFF1432C9;
}

class MySingleton {
  MySingleton._();
  static final MySingleton _instance = MySingleton._();
  factory MySingleton() => _instance;
}

class Sphere {
  const Sphere({required int radius}) : _radius = radius;
  final int _radius;

  double get volume => (4 / 3) * pi * _radius * _radius * _radius;
  double get area => 4 * pi * _radius * _radius;

  static const double pi = 3.14159265359;
}

class Name {
  Name({required this.givenName, this.surname, this.surnameIsFirst = false});

  final String givenName;
  late String? surname; //late String? surname; i guess this is wrong;
  bool surnameIsFirst;

  @override
  String toString() {
    if (surname == null) {
      return givenName;
    }
    return surnameIsFirst ? '$surname $givenName' : '$givenName $surname';
  }
}

class Desserts {
  Desserts([this.desserts = const ['cookies']]);
  final List<String> desserts;
}

class User {
  const User({required this.id, required this.name, required this.emails});

  final int id;
  final String name;
  final List<String> emails;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'emails': emails,
    };
  }

  factory User.fromJson(Map<String, dynamic> jsonMap) {
    dynamic id = jsonMap['id'];
    if (id is! int) id = 0;

    dynamic name = jsonMap['name'];
    if (name is! String) name = '';

    dynamic maybeEmails = jsonMap['emails'];
    final emails = <String>[];

    if (maybeEmails is List) {
      for (var email in maybeEmails) {
        if (email is String) emails.add(email);
      }
    }

    return User(
      id: id,
      name: name,
      emails: emails,
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, emails: $emails)';
  }
}

class Widget {
  Widget(this.width, this.height);
  final double width;
  final double height;

  factory Widget.fromJson(Map<String, dynamic> jsonMap) {
    dynamic width = jsonMap['width'];
    dynamic height = jsonMap['height'];
    if (width is! double) width = 0;
    if (height is! double) height = 0;
    return Widget(width, height);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'width': width,
      'height': height,
    };
  }

  @override
  String toString() {
    return 'Widget($width,$height)';
  }
}
