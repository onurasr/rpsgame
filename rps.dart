import 'dart:io';
import 'dart:math';

enum Move {rock, paper, scissors}

void main() {
  while (true) {
    stdout.write("Welcome to Rock, Paper, Scissors Game! // for Rock(r), for Paper(,p), for Scissors(s), for Quit(q) Enter ----------------->");
    final input = stdin.readLineSync();

    //Player Move
    var playerMove;
    var playerMovename;

    if (input == 'r') {
      playerMove = Move.rock;
      playerMovename = "Rock";
    }
    else if (input == 'p') {
      playerMove = Move.paper;
      playerMovename = "Paper";
    }
    else if (input == 's') {
      playerMove = Move.scissors;
      playerMovename = "Scissors";
    }
    else if (input == 'q') {
      break;
    }
    else{
      print("Invalid input. Please try again.");
      return main() ;
    }

    //Pc Move
    final randomNumber = Random().nextInt(3);
    final pcMove = Move.values[randomNumber];
    var pcMovename;

    if (randomNumber == 0) {
      pcMovename = "Rock";
    }
    else if (randomNumber == 1) {
      pcMovename = "Paper";
    }
    else if (randomNumber == 2) {
      pcMovename = "Scissors";
    }

    //Show Screen
    print("Your Move: $playerMovename");
    print("PC Move: $pcMovename");

    //Game Logic
    if (playerMove == Move.rock && pcMove == Move.scissors ||
        playerMove == Move.paper && pcMove == Move.rock ||
        playerMove == Move.scissors && pcMove == Move.paper) {
      print("You won!");
    }
    else if (playerMove == pcMove) {
      print("Draw!");
    }
    else {
      print("Pc won!");
    }


    
  }
}
