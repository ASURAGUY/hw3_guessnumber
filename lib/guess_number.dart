// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';
import 'game.dart';

playGame() {
  const maxRandom = 100;
  var game = Game();
  var isCorrect = false;

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }

    var result = game.doGuess(guess);
    var guessCount = game.count;

    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else if (result == 0) {
      print('║ ➜ $guess is CORRECT ❤, total guesses: $guessCount');
      print('╟────────────────────────────────────────');
      isCorrect = true;
    }
  } while (!isCorrect);

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}

void main() {
  var isPlay = false;
  playGame();
  do {
    stdout.write('Play again? (Y/N) : ');
    var ask = stdin.readLineSync();

    if (ask == 'Y' || ask == 'y') {
      playGame();
    } else if (ask == 'N' || ask == 'n') {
      print('───────────────────────────────────────');
      print('       Goodbye, Have a nice day!');
      print('═══════════════════════════════════════');
      print('     ❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤');
      isPlay = true;
    }
  } while (!isPlay);
}
