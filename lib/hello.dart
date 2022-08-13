import 'dart:io';
import 'dart:math';

import 'game.dart';

int sum({int? a, required int? b}) {
  return a! + b!;
}

void main() {
  //var game = Game();

  int result = 0;

  stdout.write('Enter a maximum number to random : ');
  int? numm = int.parse(stdin.readLineSync()!);
  var game = new Game(numm);
  var isCorrect = false;
  do {
    stdout.write('PLease guess the number between 1 and $numm : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == null){
      //print('Please enter number only');
      continue;
    }
    result = game.doGuess(guess);
  }while(result != 1);
}