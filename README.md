# discreteAlgorithms
Programs implementing algorithms I learned about in Discrete Mathematics
This repo is a collection of programs I made to help me better understand some of the algorithms I found intriguing.

Each program developed in vim for c++14
compile  `c++ -std=c++14 <program-name>`

for ruby
`ruby <program-name>`

sieve.rb
   The Sieve of Eratosthenes is a simple, ancient algorithm for finding all prime numbers up to any given limit.
This is a quick implementation of the sieve. It is currently very inefficient. Inputs over 2^12 will take longer than a second to calculate and display 

euclidean.cpp

  Given two Natural Numbers - Finds the GCD of the pair.
  
discreteGame.cpp

  Suppose we have two piles of cards, each with n cards. Each player in turn chooses one pile and removes any number of cards from the pile but must remove at least one. The last player to pick up a card or cards wins the game. Prove that the second player can always win the game.

  Example suppose n = 3
  Player 1 takes one card from pile one
  Player 2 takes one card from pile two
  Player 1 takes remaining two from pile two
  Player 2 takes remaining two form pile one and wins

Player 2 can always win the game if the follow the algorithm  of always taking the same amount of cards as player one but from the opposite pile. 

The program places the user as player one and demonstrates how the CPU will always win as player two by following the prescribed algorithm.
