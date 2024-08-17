class LinearCongruentialGenerator {
  static const int _a = 1664525; // Multiplier
  static const int _c = 1013904223; // Increment
  static const int _m = 4294967296; // 2^32, Modulus

  int _seed; // Holds the current seed/state

  // Constructor with an optional seed
  LinearCongruentialGenerator({int? seed})
      : _seed = seed ?? DateTime.now().millisecondsSinceEpoch % _m;

  // Generate the next pseudo-random number
  int nextInt() {
    _seed = (_a * _seed + _c) % _m;
    return _seed;
  }

  // Generate a pseudo-random double between 0 and 1
  double nextDouble() {
    return nextInt() / _m;
  }
}

int basicFunction(
    {required int seed,
    int multiplier = 123,
    int increment = 321,
    int modulus = 213}) {
  return (multiplier * seed + increment) % modulus;
}

void generateRandom(
    {required int a, required int c, required int m, required int seed}) async {
  List<int> sequence = [];
  for (int i = 0; i < c + 1; i++) {
    Future.delayed(Duration(seconds: i), () {
      seed = (a * seed + c) % m;
      sequence.add(seed);
      print('X${i + 1} = ( $a * $i + $c) mod $m = $seed');
    });
  }
  Future.delayed(Duration(seconds: c + 1), () {
    print('the generatred sequence is $sequence');
  });
}

void main() {
  generateRandom(a: 5, c: 7, m: 8, seed: 4);
  // int seed = 4;
  // for (int i = 0; i < 8; i++) {
  //   seed = generateNextRandom(seed);
  //   print('X${i + 1} = ${seed}');
  // }

  // Generate some integers
  // for (var i = 0; i < 5; i++) {
  //   print(rng.nextInt());
  // }

  // // Generate some doubles
  // for (var i = 0; i < 5; i++) {
  //   print(rng.nextDouble());
  // }

  // var testing = ((basicFunction(seed: 4465) / 213) * 3);
  // print(testing);

  // var test2 = rand(-2);
  // print(test2);
}

double rand(int theSeed) {
  const m = 32767, a = 2743, c = 5923;

  theSeed = theSeed < 0 ? theSeed += m : theSeed;

  theSeed = (a * theSeed + c) % m;

  print('Here you go:${theSeed / m}');

  return theSeed / m;
}
