import 'dart:math';


//1. Constructor: The class should accept the number of sides (default to 6).
// 2. Method: A function that returns a random integer from 1 to the number of sides.
//Key Points to Consider:
// • How to handle randomness .
// • How to store the number of sides.

class diceClass {
  int sides = 6;

  diceClass ({required this.sides})

}

//1. Name: A field that identifies the player (e.g., “Player 1”).
// 2. Score: A field to hold the player’s accumulated points.
// 3. Method: A function that takes in a list of dice, rolls them, and updates the player’s score with the sum of the rolls.

// Key Points to Consider:
// • Ensuring the total score correctly increments after each roll.
// • Handling multiple dice.
class player {


}

//3. Main Game Logic

// Requirements:
// 1. Two Dice per Player: Create two separate dice instances for each player.
// 2. Two Players: Instantiate two Player objects
// 3. Number of Rounds: Let each player roll their dice a fixed number of times (e.g., 3 rounds).
// 4. Output:
// • After each round, display the roll result for each player and their updated total score.
// • At the end, compare final scores and declare a winner or a tie.

// Key Points to Consider:
// • How to structure the rounds in a loop.
// • Displaying intermediate and final results in a clear format.