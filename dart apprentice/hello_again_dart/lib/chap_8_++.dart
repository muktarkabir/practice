import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:isolate';

Future<void> main() async {
  // Earth earth = Earth();
  // await earth.contactMars();
  await isolatesChallenge();
}

class IntNode {
  IntNode(this.value);
  int value;

  IntNode? leftChild;
  IntNode? rightChild;
}

Node<int> createIntTree() {
  final zero = Node(0),
      one = Node(1),
      five = Node(5),
      seven = Node(7),
      eight = Node(8),
      nine = Node(9);

  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;

  return seven;
}

class StringNode {
  StringNode(this.value);

  String value;

  StringNode? leftChild;
  StringNode? rightChild;
}

Node<String> createStringTree() {
  final zero = Node('zero');
  final one = Node('one');
  final five = Node('five');
  final seven = Node('seven');
  final eight = Node('eight');
  final nine = Node('nine');

  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;

  return seven;
}

class Node<T> {
  Node(this.value);
  T value;

  Node<T>? leftChild;
  Node<T>? rightChild;
  @override
  String toString() {
    final left = leftChild?.toString() ?? '';
    final parent = value.toString();
    final right = rightChild?.toString() ?? '';

    return '$left $parent $right';
  }
}

Node<E>? createTree<E>(List<E> nodes, [int index = 0]) {
  if (index >= nodes.length) {
    // print('Out of bounds');
    return null;
  }

  // print('Index:$index.');
  final node = Node(nodes[index]);
  // print('Node:${node.value}.');
  final leftChildIndex = 2 * index + 1;
  // print('leftChildIndex: $leftChildIndex.');
  final rightChildIndex = 2 * index + 2;
  // print('rightChildIndex: $rightChildIndex.');

  node.leftChild = createTree(nodes, leftChildIndex);
  node.rightChild = createTree(nodes, rightChildIndex);

  return node;
}

void createTreeExample() {
  final tree = createTree([7, 1, 9, 0, 5, 8]);

  print(tree?.value);
  print(tree?.leftChild?.value);
  print(tree?.rightChild?.value);
  print(tree?.leftChild?.leftChild?.value);
  print(tree?.leftChild?.rightChild?.value);
  print(tree?.rightChild?.leftChild?.value);
  print(tree?.rightChild?.rightChild?.value);
}

class BinarySearchTree<E extends Comparable<E>> {
  Node<E>? root;

  void _insert(E value) {
    root = _insertAt(root, value);
  }

  Node<E> _insertAt(Node<E>? node, E value) {
    if (node == null) {
      return Node(value);
    }

    if (value.compareTo(node.value) < 0) {
      node.leftChild = _insertAt(node.leftChild, value);
    } else {
      node.rightChild = _insertAt(node.rightChild, value);
    }
    return node;
  }

  @override
  String toString() => root.toString();
}

void bstExample() {
  BinarySearchTree<num> binarySearchTree = BinarySearchTree();
  binarySearchTree._insert(7);
  binarySearchTree._insert(1);
  binarySearchTree._insert(9);
  binarySearchTree._insert(0);
  binarySearchTree._insert(5);
  binarySearchTree._insert(8);

  print(binarySearchTree);
}

// Generics exercise
class IntStack {
  List<int> stack = [];

  void push(int value) => stack.insert(0, value);

  int pop() => stack.removeAt(0);

  void peek() => print('${stack.firstOrNull}');

  bool isEmpty() => stack.isEmpty;

  @override
  String toString() => stack.toString();
}

void intStack() {
  final stack = IntStack();
  stack.push(9);
  stack.push(2);
  stack.push(5);
  stack.push(3);
  print(stack.pop());
  stack.peek();
  print(stack.isEmpty());
  print(stack);
}

class Stack<E> {
  List<E> stack = [];

  void push(E value) => stack.insert(0, value);

  E pop() => stack.removeAt(0);

  E? peek() => stack.firstOrNull;

  bool isEmpty() => stack.isEmpty;

  @override
  String toString() => stack.toString();
}

void genericStack() {
  final intStack = Stack<int>();
  intStack.push(9);
  intStack.push(2);
  intStack.push(5);
  intStack.push(3);
  print(intStack.pop());
  print(intStack.peek());
  print(intStack.isEmpty());
  print(intStack);

  final stringStack = Stack<String>();
  stringStack.push('nine');
  stringStack.push('two');
  stringStack.push('five');
  stringStack.push('three');
  print(stringStack.pop());
  print(stringStack.peek());
  print(stringStack.isEmpty());
  print(stringStack);
}

// Chapter 9: Enhanced Enums
enum TrafficLight {
  green('Go!'),
  yellow('Slow Down!'),
  red('Stop!');

  const TrafficLight(this.message);
  final String message;
}

void enumTest() {
  final color = TrafficLight.green;

  print(color.message);
}

class Point {
  const Point(this.x, this.y);

  final double x, y;
// Operator Overloading
  Point operator +(Point other) => Point(x + other.x, y + other.y);

  @override
  String toString() => '($x, $y)';
}

void pointTest() {
  const pointA = Point(3, 4);
  const pointB = Point(2, 3);

  final pointC = pointA + pointB;
  print(pointC);
}

enum Day {
  monday('Monday'),
  tuesday('Tuesday'),
  wednesday('Wednesday'),
  thursday('Thursday'),
  friday('Friday'),
  saturday('Saturday'),
  sunday('Sunday');

  const Day(this.displayName);
  final String displayName;

  Day get next => this + 1;

  Day operator +(int days) => _combine(days, true);
  Day operator -(int days) => _combine(days, false);

  Day _combine(int days, bool isAdding) {
    final sign = (isAdding) ? 1 : -1;
    final numberOfItems = Day.values.length;
    final index = (this.index + (sign * days)) % numberOfItems;
    return Day.values[index];
  }
}

void dayTest() {
  Day day = Day.monday;

  day = day + 2;
  print(day.name);

  day += 4;
  print(day.name);

  day++;
  print(day.name);

  var restDay = Day.saturday;
  print(restDay.next);
}

abstract interface class Serializable {
  String serialize();
}

enum Weather implements Serializable {
  sunny,
  rainy,
  cloudy;

  @override
  String serialize() => name;

  static Weather deserialize(String value) {
    return values.firstWhere(
      (element) => element.name == value,
      orElse: () => Weather.sunny,
    );
  }
}

void weatherTest() {
  final weather = Weather.cloudy;

  String serrialized = weather.serialize();
  print(serrialized);

  Weather deserialized = Weather.deserialize(serrialized);
  print(deserialized);
}

enum Fruit with Describer { cherry, peach, banana }

enum Vegetable with Describer { carrot, broccoli, spinach }

mixin Describer on Enum {
  void describe() => print('This $runtimeType is a $name');
}

void mixinTest() {
  final fruit = Fruit.banana;
  final veggie = Vegetable.broccoli;

  fruit.describe();
  veggie.describe();
}

enum Default<T extends Object> {
  font<String>('roboto'),
  size<double>(17.0),
  weight<int>(400);

  const Default(this.value);
  final T value;
}

void genericEnumTest() {
  // String defaultFont = Default.font.value;
  // double defaultSize = Default.size.value;
  // int defaultWeight = Default.weight.value;
}

//Enhanced Enums Chalenge

void enhancedEnumsChallenge() {
  // var day = Day.monday;
  // day = day + 2;
  // print(day.name);
  // day += 4;
  // print(day.name);
  // day++;
  // print(day.name);

  // day--;
  // print(day.name);
  // day -= 4;
  // print(day.name);
  // day = day - 2;
  // print(day.name);

  // for (final day in Day.values) {
  //   print(day.displayName);
  // }

  for (var status in StatusCode.values) {
    print('status: ${status.code}, ${status.meaning}');
  }
}

enum StatusCode {
  ok(200, 'OK'),
  created(201, 'Created'),
  accepted(202, 'Accepted'),
  notFound(404, 'Not Found'),
  badRequest(400, 'Bad Request'),
  unauthorized(401, 'Unauthorized'),
  forbidden(403, 'Forbidden');

  const StatusCode(this.code, this.meaning);
  final int code;
  final String meaning;
}

// Error Handling

void errorHandlingTest() {
  const malformedJson = 'abc';
  jsonDecode(malformedJson);
  functionOne();

  final characters = ' abcdefghijklmnopqrstuvwxyz!';
  final data = [4, 1, 18, 20, 0, 9, 19, 0, 6, 21, 14, 27];
  final buffer = StringBuffer();
  for (final index in data) {
    final letter = characters[index];
    buffer.write(letter);
  }
  print(buffer);

  const json = '{"name:"bob"}';

  try {
    dynamic result = jsonDecode(json);
    print(result);
  } on FormatException {
    print('The Json String was invalid');
  }

  const numberStrings = ['42', 'hello'];

  try {
    for (var numberString in numberStrings) {
      final number = int.parse(numberString);
      print(number ~/ 0);
    }
  } on FormatException {
    handleFormatException();
  } on UnsupportedError {
    handleDivisionByZero();
  }

  final FakeDatabase database = FakeDatabase();
  database.open();
  final String data = database.fetchData();
  try {
    final int number = int.parse(data);
    print('The number is $number');
  } on FormatException {
    print('Dart did\'nt recognize ($data) as a number');
  } finally {
    database.close();
  }

  const String password = '1SHSHSHSHSHHJjSHS';

  try {
    validatePassword(password);
  } on ShortPasswordException catch (e) {
    print(e.message);
  } on NoLowercaseException catch (e) {
    print(e.message);
  } on NoNumberException catch (e) {
    print(e.message);
  } on NoUppercaseException catch (e) {
    print(e.message);
  }
}

void functionOne() {
  functionTwo();
}

void functionTwo() {
  functionThree();
}

void functionThree() {
  // int.parse('Hello World');
}

void handleFormatException() =>
    print('You tried to parse a non-numeric string.');
void handleDivisionByZero() => print('You can\t divide by zero.');

class FakeDatabase {
  void open() => print('Opening database');
  void close() => print('Closing database');
  String fetchData() => '42';
}

class ShortPasswordException implements Exception {
  ShortPasswordException(this.message);
  final String message;
}

class NoNumberException implements Exception {
  NoNumberException(this.message);
  final String message;
}

class NoUppercaseException implements Exception {
  NoUppercaseException(this.message);
  final String message;
}

class NoLowercaseException implements Exception {
  NoLowercaseException(this.message);
  final String message;
}

void validateLength(String password) {
  final goodLength = RegExp(r'.{12,}');

  if (!password.contains(goodLength)) {
    throw ShortPasswordException('Password must be at least 12 characters!');
  }
}

void validateLowerase(String password) {
  final lowercase = RegExp(r'[a-z]');
  if (!password.contains(lowercase)) {
    throw NoLowercaseException('Password must have a lowrcase letter!');
  }
}

void validateUpperCase(String password) {
  final upperCase = RegExp(r'[A-Z]');
  if (!password.contains(upperCase)) {
    throw NoUppercaseException('Password must contain an uppercase letter');
  }
}

void validateNumber(String password) {
  final number = RegExp(r'[0-9]');

  if (!password.contains(number)) {
    throw NoNumberException('Password must contain a number');
  }
}

void validatePassword(String password) {
  validateLength(password);
  validateLowerase(password);
  validateUpperCase(password);
  validateNumber(password);
}

// Exception challenge

void exceptionChallenge() {
  final numbers = ['3', '1E+8', '1.25', 'four', '-0.01', 'NaN', 'Infinity'];

  try {
    for (var number in numbers) {
      final parsed = double.parse(number);
      print(parsed);
    }
  } on FormatException {
    print('Dart does not recognize the input as a number');
  }

  const postalCode = '156557';
  try {
    validatePostalcode(postalCode);
    print(postalCode);
  } on InvalidPostalCodeException catch (e) {
    print(e.message);
  }
}

class InvalidPostalCodeException implements Exception {
  InvalidPostalCodeException(this.message);
  final String message;
}

void validatePostalcode(String postalCode) {
  try {
    int.parse(postalCode);
    if (int.parse(postalCode).length != 5) {
      throw InvalidPostalCodeException(
          'A valid postal code must have a length of 5 digits.');
    }
  } on FormatException {
    throw InvalidPostalCodeException('The postal code must be a valid number.');
  }
}

extension on int {
  int get length => checkLength(this);
  int checkLength(int number) {
    final convertedNum = number.toString();
    return convertedNum.length;
  }
}

// Concurrency
void concurrencyTest() {
  print('first');
  Future<void>.delayed(const Duration(seconds: 2), () => print('Second'));
  print('third');
  // Future<void>(() => print('ssecond')).then((value) => print('third'));

  // Future.microtask(() => print('third'));
  // Future(() => print('fourth'));
  // print('fifth');
}
// Concurrency Challenge

void concurrencyChallenge() {
  print('1 synchronous');
  Future(() => print('2 event queue')).then((value) => print('3 synchronous'));
  Future.microtask(() => print('4 microtask queue'));
  Future.microtask(() => print('5 microtask queue'));
  Future.delayed(Duration(seconds: 2), () => print('6 event queue'));
  Future(() => print('7 event queue')).then((value) {
    Future(() => print('8 event queue'));
  });
  Future(() => print('9 event queue')).then(
    (value) => Future.microtask(() => print('10 microtask')),
  );
  print('11 synchronous');
}

// Chapter 12: Futures

void futuresTest() async {
  // print('Before the future');
  // final myFuture = Future<int>.delayed(
  //   const Duration(seconds: 2),
  //   () => 42,
  // )
  //     .then(
  //       (value) => print('Value: $value'),
  //     )
  //     .catchError(
  //       (Object error) => print('Error: $error'),
  //     )
  //     .whenComplete(() => print('Future is complete'));
  // print('After the future');
  // print(myFuture.runtimeType);

  // await keyword
  print('Before the future');

  try {
    final value = await Future<int>.delayed(
      const Duration(seconds: 2),
      () => 42,
    );
    print('Value: $value');
  } catch (e) {
    print(e);
  } finally {
    print('Future is Complete');
  }
  print('After the future');

  //Exercise
  try {
    final value = await Future<String>.delayed(
        const Duration(seconds: 3), () => 'I am from the future');
    print(value);
  } catch (e) {
    print(e);
  }
}

class Todo {
  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  final int userId, id;
  final String title;
  final bool completed;

  factory Todo.fromJson(Map<String, dynamic> jsonMap) {
    return Todo(
        userId: jsonMap['userId'] as int,
        id: jsonMap['id'] as int,
        title: jsonMap['title'] as String,
        completed: jsonMap['completed'] as bool);
  }

  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}

// MAking a get rquest
Future<void> makeAGetRequest() async {
  try {
    final url = 'https://jsonplaceholder.typicode.com/todos/1';
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    final statusCode = response.statusCode;

    if (statusCode != 200) {
      throw HttpException('$statusCode');
    }

    final jsonString = response.body;
    dynamic jsonMap = jsonDecode(jsonString);
    final todo = Todo.fromJson(jsonMap);
    print(todo);
  } on SocketException catch (e) {
    print(e);
  } on HttpException catch (e) {
    print(e);
  } on FormatException catch (e) {
    print(e);
  }
}

// Making future from scratch
abstract interface class DataRepo {
  Future<double> fetchTemperature(String city);
}

class FakeWebServer implements DataRepo {
  @override
  Future<double> fetchTemperature(String city) {
    // return Future(() => 54.0);
    // return Future.value(34.2);
    // return Future.error(ArgumentError('$city doesn\'t exist'));
    // return Future.delayed(const Duration(seconds: 2), () => 45.9);
    // return Future.delayed(const Duration(seconds: 2),
    //  () => throw ArgumentError('$city doest exist'));
    // return 42.0; add async
    final Completer<double> completer = Completer<double>();
    final random = Random();
    final randomNumber = random.nextInt(100);
    final randomBool = random.nextBool();
    if (randomBool) {
      completer.completeError(HttpException('Could not reach server'));
    }
    if (city == 'Portland' && randomNumber.isEven) {
      completer.complete(23.8);
    } else {
      completer.completeError(ArgumentError('City doesn\t exist.'));
    }
    return completer.future;
  }
}

void futureFromScratchTest() async {
  final web = FakeWebServer();
  try {
    final city = 'Portland';
    final degrees = await web.fetchTemperature(city);
    print('It\'s $degrees degrees in $city');
  } on ArgumentError catch (e) {
    print(e);
  } on HttpException catch (e) {
    print(e);
  }
}

// Challenge: make fakewebserver to sometimes completes with an error
// Challenge: get real weather data
void realWeather() async {
  const base = 'https://api.openweathermap.org/data/2.5/weather';
  const apiKey = 'e1761b76d66bd43481a53be3afc7aa9b';
  const lat = 45.5;
  const lon = -122.7;
  try {
    final url = Uri.parse('$base?lat=$lat&lon=$lon&appid=$apiKey&units=metric');
    final respose = await http.get(url);
    final jsonMap = jsonDecode(respose.body);
    final cityName = jsonMap['name'] as String;
    final temperature = jsonMap['main']['temp'] as double;
    print('It is $temperature in $cityName');
  } on HttpException catch (e) {
    print(e);
  } on SocketException catch (e) {
    print(e);
  } on FormatException catch (e) {
    print(e);
  }
}

// Care to make a comment
class Comment {
  Comment(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  final int postId, id;
  final String name, email, body;

  factory Comment.fromJson(Map<String, dynamic> jsonMap) {
    return Comment(
        postId: jsonMap['postId'] as int,
        id: jsonMap['id'] as int,
        name: jsonMap['name'] as String,
        email: jsonMap['email'] as String,
        body: jsonMap['body'] as String);
  }

  @override
  String toString() =>
      'Comment(postId:$postId, id:$id, name:$name, email:$email, body:$body)';
}

void localTest() {
  // final String test = '{"id":1,"name":"muktar"}';
  String hmm = '''
[
  {"postId":12,"id":16,"name":"mukhtar kabir","email":"mukhtarkabir3394@gmail.com","body":"this is a comment i made"},
  {"postId":31,"id":12,"name":"jon snow","email":"mukhtarkabir3394@gmail.com","body":"this is a comment i made"},
  {"postId":5,"id":17,"name":"rhaeneyra targeryan","email":"mukhtarkabir3394@gmail.com","body":"this is a comment i made"},
  {"postId":11,"id":186,"name":"paul atredis","email":"mukhtarkabir3394@gmail.com","body":"this is a comment i made"},
  {"postId":9,"id":129,"name":"gojo satoru","email":"mukhtarkabir3394@gmail.com","body":"this is a comment i made"},
  {"postId":4,"id":326,"name":"monkey D. Luffy","email":"mukhtarkabir3394@gmail.com","body":"this is a comment i made"}
]
''';

  final decodedHmm = jsonDecode(hmm);
  // print(decodedHmm);
  List<Comment> list = [];

  for (var element in decodedHmm) {
    var comment = Comment.fromJson(element);
    list.add(comment);
  }
  // print(list);
}

void getComments() async {
  List<Comment> comments = [];
  try {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    final response = await http.get(url);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJson = response.body;
      dynamic jsonList = jsonDecode(rawJson);
      for (var comment in jsonList) {
        var convertedComment = Comment.fromJson(comment);
        comments.add(convertedComment);
      }
    } else {
      throw HttpException('$statusCode');
    }
  } on SocketException catch (e) {
    print('Go back online.\n');
    print(e);
  } on HttpException catch (e) {
    print(e);
  } on FormatException catch (e) {
    print(e);
  } finally {
    print('There are ${comments.length} comments in this list, crazy.');
  }
  try {
    print('${comments[Random().nextInt(comments.length)]}');
  } on RangeError catch (e) {
    print('Out of bounds');
    print(e);
  }
}

// Chapter 13: Streams
void streamsTest() async {
//Error handling Included

  final file = File('assets/text.txt');
  final contents = await file.readAsString();
  print('\n$contents');

  try {
    final longFile = File('assets/text_long.txt');
    final Stream<List<int>> stream = longFile.openRead();
    int chunkCount = 0;
    await for (var data in stream) {
      chunkCount++;
      print('Chunk $chunkCount: ${data.length} bytes');
    }
  } on Exception catch (e) {
    print(e);
  } finally {
    print('All done');
  }

  // Cancelling a subscription

  final longFile = File('assets/text_long.txt');
  final Stream<List<int>> stream = longFile.openRead();
  StreamSubscription<List<int>>? subscription;
  int chunkCount = 0;
  subscription = stream.listen(
    (List<int> data) {
      chunkCount++;
      print('Chunk $chunkCount: ${data.length} bytes');
      subscription?.cancel();
    },
    onError: (Object error) {
      print(error);
    },
    cancelOnError: true,
    onDone: () {
      print('All finished');
    },
  );

  // Transforming a stream

final file = File('assets/text.txt');
  final Stream<List<int>> stream = file.openRead();
  final Stream<String> stringStream = stream.transform(Utf8Decoder());
  stringStream.listen(
    (data) {
      print(data);
    },
  );

  //Using await-for
  // await for (var data in stringStream) {
  //   print(data);
  // }

  // Exercise

  Stream<int> myStream = Stream.periodic(
    Duration(seconds: 1),
    (value) => value,
  ).take(10);

  // myStream.forEach(print);
  await for (var data in myStream) {
    print(data);
  }

//   Creating streams from scratch
// Using the Stream.fromFutures constructor

  final first = Future(() => 'Row');
  final second = Future(() => 'row');
  Future<String> third = Future(() => 'row');
  Future<String> fourth =
      Future.delayed(Duration(seconds: 1), () => 'your boat');

  Stream<String> stream = Stream<String>.fromFutures([
    first,
    second,
    third,
    fourth,
  ]);
  stream.listen((data) {
    print(data);
  });

//   async generator
  final stream = conciousness();
  stream.listen((data) => print(data));

  // Using stream controllers
  final controller = StreamController<String>();
  final stream = controller.stream;
  final sink = controller.sink;

  stream.listen(
    (data) {
      print(data);
    },
    onError: (Object error) => print(error),
    onDone: () => print('sink closed'),
  );

  sink
    ..add('grape')
    ..add('grape')
    ..add('grape')
    ..addError(Exception('cherry'))
    ..add('grape')
    ..close();
}
// Creating a stream using an asyc generator

Stream<String> conciousness() async* {
  final data = ['con', 'cious', 'ness'];
  for (var element in data) {
    await Future.delayed(Duration(milliseconds: 500));
    yield element;
  }
}

void streamChallenges() async {
  final url = Uri.parse('https://kodeco.com');
  final client = http.Client();
  try {
    final request = http.Request('GET', url);
    final response = await client.send(request);
    final stream = response.stream;
    stream.listen((data) {
      print(data);
    });
    await for (var data in stream.transform(Utf8Decoder())) {
      print(data);
    }
  } on HttpException catch (e) {
    print(e);
  } on SocketException catch (e) {
    print(e);
    print('SocketException');
  } on FormatException catch (e) {
    print(e);
    print('Format exception');
  } finally {
    client.close();
  }

  final coinFlipper = CoinFlipperService();

  coinFlipper.start();
  coinFlipper.onFlip.listen(
    (data) {
      print(data.name);
    },
    onDone: () => coinFlipper.dispose,
    onError: (error) => print(error),
  );
}

enum Coin { heads, tails }

class CoinFlipperService {
  final _controller = StreamController<Coin>();

  Stream<Coin> get onFlip => _controller.stream;

  void start() {
    for (var i = 0; i < 10; i++) {
      Future.delayed(Duration(milliseconds: 500 * i), () {
        _controller.add(Random().nextBool() ? Coin.heads : Coin.tails);
      });
    }
  }

  void dispose() => _controller.close();
}

// Chapter 14: Isolates
void isolateTest() async {
  //One-way isolate communication
  final receivePort = ReceivePort();
  final isolate = await Isolate.spawn<Map<String, Object>>(
      playHideAndSeekTheLongVersion,
      {'sendPort': receivePort.sendPort, 'countTo': 9999999});

  // await for (var data in receivePort) {
  //   if (data is String) {
  //     print(data);
  //   } else if (data == null) {
  //     receivePort.close();
  //     isolate.kill();
  //   }
  // }

  receivePort.listen((Object? message) {
    if (message is String) {
      print(message);
    } else if (message == null) {
      receivePort.close();
      isolate.kill();
    }
  });
}

void playHideAndSeekTheLongVersion(Map<String, Object> arguments) {
  final sendPort = arguments['sendPort'] as SendPort;
  final countTo = arguments['countTo'] as int;

  sendPort.send("Okay, i'm counting...");
  int counting = 0;

  for (var i = 1; i <= countTo; i++) {
    counting = i;
  }

  final message = '$counting! ready or not here i come.';
  sendPort.send(message);

  sendPort.send(null);
}

// Two way isolate communication

class Work {
  Future<int> doSomething() async {
    print('Doing some work');
    const Duration forOneSecond = Duration(seconds: 1);
    sleep(forOneSecond);
    return 42;
  }

  Future<int> doSomethingElse() async {
    print('Doing some other work');
    sleep(Duration(seconds: 1));
    return 24;
  }
}

Future<void> _entryPoint(SendPort sendtoEarthPort) async {
  final receiveOnMarsPort = ReceivePort();
  sendtoEarthPort.send(receiveOnMarsPort.sendPort);
  final work = Work();
  receiveOnMarsPort.listen((Object? messageFromEarth) async {
    await Future<void>.delayed(Duration(seconds: 1));
    print('Message from Earth: $messageFromEarth');
    if (messageFromEarth == 'Hey from Earth') {
      sendtoEarthPort.send('Hey from Mars');
    } else if (messageFromEarth == 'Can you help?') {
      sendtoEarthPort.send('sure');
    } else if (messageFromEarth == 'doSomething') {
      final result = await work.doSomething();
      sendtoEarthPort.send({'method': 'doSomething', 'result': result});
    } else if (messageFromEarth == 'doSomethingElse') {
      final result = await work.doSomethingElse();
      sendtoEarthPort.send({'method': 'doSomethingElse', 'result': result});
      sendtoEarthPort.send('done');
    }
  });
}

class Earth {
  final _receiveOnEarthPort = ReceivePort();
  SendPort? _sendToMarsPort;
  Isolate? _marsIsolate;

  Future<void> contactMars() async {
    if (_marsIsolate != null) return;

    _marsIsolate = await Isolate.spawn<SendPort>(
        _entryPoint, _receiveOnEarthPort.sendPort);

    _receiveOnEarthPort.listen((Object? messageFromMars) async {
      await Future<void>.delayed(Duration(seconds: 1));
      print('Message from Mars: $messageFromMars');
      if (messageFromMars is SendPort) {
        _sendToMarsPort = messageFromMars;
        _sendToMarsPort?.send('Hey from Earth');
      } else if (messageFromMars == 'Hey from Mars') {
        _sendToMarsPort?.send('Can you help?');
      } else if (messageFromMars == 'sure') {
        _sendToMarsPort?.send('doSomething');
        _sendToMarsPort?.send('doSomethingElse');
      } else if (messageFromMars is Map) {
        final method = messageFromMars['method'] as String;
        final result = messageFromMars['result'] as int;
        print('The result of $method is $result');
      } else if (messageFromMars == 'done') {
        print('shutting down');
        dispose();
      }
    });
  }

  void dispose() {
    _receiveOnEarthPort.close();
    _marsIsolate?.kill();
    _marsIsolate = null;
  }
}

// Isolate Challenges
Future<void> isolatesChallenge() async {
  // Challenge 1
  final receivePort = ReceivePort();

  Isolate isolate = await Isolate.spawn<Map<String, Object>>(
      fibonacciSolver, {'sendPort': receivePort.sendPort, 'nthNumber': 30});

  receivePort.listen(
    (data) {
      if (data == null) {
        isolate.kill();
        receivePort.close();
      } else {
        print(data);
      }
    },
  );

  // Challenge 2
  final receiver = ReceivePort();
  final bigJson = '''
{
  "language": "Dart",
  "feeling": "love it",
  "level": "intermediate"
}
''';
  await Isolate.spawn(
      jsonParser, {'sendPort': receiver.sendPort, 'json': bigJson});

  final map = await receiver.first;
  print(map);
}

void fibonacciSolver(Map<String, Object> arguments) {
  final sendPort = arguments['sendPort'] as SendPort;
  final nthNumber = arguments['nthNumber'] as int;
  sendPort.send('Calculating');
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < nthNumber) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  sendPort.send('Fibonacci number $nthNumber is $current.');
  sendPort.send(null);
}

void jsonParser(Map<String, Object> arguments) {
  final sendPort = arguments['sendPort'] as SendPort;
  final json = arguments['json'] as String;

  final parsed = jsonDecode(json);
  Isolate.exit(sendPort, parsed);
}
