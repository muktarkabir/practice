import 'dart:io';
import 'dart:math';

enum Move { Rock, Paper, Scisscors }

void main() {
  final randomNumberGenerator = Random();
  while (true) {
    stdout.write('Rock, Paper,Scissors ?(r/p/s)=>');
    final input = stdin.readLineSync();
    Move playerMove;

    if (input == 'r' || input == 'p' || input == 's') {
      if (input == 'r') {
        playerMove = Move.Rock;
      } else if (input == 'p') {
        playerMove = Move.Paper;
      } else {
        playerMove = Move.Scisscors;
      }
      final random = randomNumberGenerator.nextInt(3);
      final aiMove = Move.values[random];

      final uO = playerMove.toString().substring(5);
      final aO = aiMove.toString().substring(5);

      print('You played: $uO');
      print('AI played: $aO');
      if (playerMove == aiMove) {
        print('It\'s a draw');
      } else if ((playerMove == Move.Rock && aiMove == Move.Scisscors) ||
          (playerMove == Move.Scisscors && aiMove == Move.Paper) ||
          (playerMove == Move.Paper && aiMove == Move.Rock)) {
        print('You win this round');
      } else {
        print('AI wins this round');
      }
    } else if (input == 'q') {
      stdout.write('Exiting Program...');
      Future.delayed(const Duration(seconds: 2));
      break;
    } else {
      print('Invalid Input');
    }
  }
}
