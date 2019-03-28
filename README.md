# discreteAlgorithms
Programs implementing algorithms I learned about in Discrete Mathematics
This repo is a collection of programs I made to help me better understand some of the algorithms I found intriguing.

Each program developed in vim for c++14
compile  `c++ -std=c++14 <program-name>`

for ruby
`ruby <program-name>`

rangeSummation.rb

   Ruby offers amazing syntax to sum a range of numbers `(1..10).sum` ouputs 55 as expected. Furthermore you can output the sum of a range only in increments of a number e.g. `(1..10).step(2).sum` outputs 25 (1+3+5+7+9). I wanted to try and create a function that showed how the built in method might work under the hood implementing an algorithm I learned in Discrete Mathematics. The function offers flexibility in that a user can give a range in any order with the ability to specify the sum should be of every n number within the range e.g. passing the i argument to sum every other number `i: 2`
The output can be made verbose by passing the `v: true` argument. This will print every number used in the calculation neatly. The function always returns the specified sum so that it may be used in further calculations.

Algorithm used to sum the given range

```
elements = (b..e).step(args[:i]).to_a 
sum = elements.size * (elements.first+elements.last) / 2 
```
This function could be made much shorter by using ruby's built in methods 
```
sum = (b..e).step(args[:i]).sum
```

sieve.rb

   The Sieve of Eratosthenes is a simple, ancient algorithm for finding all prime numbers up to any given limit.
This is a quick implementation of the sieve. It is currently very inefficient. Inputs over 2^12 will take longer than a second to calculate and display 

primeFactors.rb

   Uses a simple algorithm to compute all of the prime factors of a given  number

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
