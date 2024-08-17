void main() {
  generateRandom(a: 5, c: 7, m: 8, seed: 4);
}


void generateRandom(
    {required int a, required int c, required int m, required int seed}) async {
  List<int> sequence = [];
  for (int i = 0; i <= c; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('X${i + 1} = ( $a * $seed + $c) mod $m = ${(a * seed + c) % m}.');
      seed = (a * seed + c) % m;
      sequence.add(seed);
    });
  }
  Future.delayed(Duration(seconds: c + 1), () {
    print('The generatred sequence is $sequence.');
  });
}


// double rand(int theSeed) {
//   const m = 32767, a = 2743, c = 5923;

//   theSeed = theSeed < 0 ? theSeed += m : theSeed;

//   theSeed = (a * theSeed + c) % m;

//   print('Here you go:${theSeed / m}');

//   return theSeed / m;
// }
