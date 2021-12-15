// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

void main() {
  const maxRandom = 100;
  var r = Random();
  var answer = r.nextInt(maxRandom);
  var count = 0;
  var s1 = '║──────────────────────────────────────────────────────';
  var s2 = '╚══════════════════════════════════════════════════════';
  //print(answer);
  print('╔══════════════════════════════════════════════════════');
  print('║                  GUESS THE NUMBER');
  print(s1);
  do {
    stdout.write('║ Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    if (int.tryParse(input!) != null) {
      dynamic guess = int.tryParse(input!);
      count++;
      if (guess == answer) {
        print('║➜ $guess is CORRECT ❤, total guesses : $count');
        print(s1);
        print('║                  😊😊 THE END 😊😊');
        print(s2);
        break;
      } else {
        if (guess < answer) {
          print('║➜ $guess is too LOW! ▼');
        } else if (guess > answer) {
          print('║➜ $guess is too HIGH! ▲');
        }
        false;
      }
      print(s1);
    }
  } while (true);
}
