#include <iostream>

int getDeck() {
	int choice{0};
	while(choice != 1 && choice != 2) {
		std::cout << "Pick a Deck\n1)Deck 1\n2)Deck 2\n";
		std::cin >> choice;	
	}
	return choice;
}

int getValue(int n) {
	int value{0};
	while(value == 0 || value > n) {
		std::cout << "How many cards to remove?\n" << "Choose between 1-" << n << std::endl;
		std::cin >> value; 
	}
	return value;
}

void printDecks(int deck1, int deck2) {
	std::cout <<"Deck 1: "<< deck1 << "\nDeck 2: " << deck2 << std::endl;
}

int main() {
	int n{0}; //number of cards in each deck
	std::cout << "How many cards in each deck?\n";
	std::cin >> n;
	int deck1{n}, deck2{n};
	//game loop
	while(true) {
		printDecks(deck1,deck2); 
		int deck = getDeck();
		int sub = getValue(n);
		deck == 1 ? deck1 -= sub : deck2 -= sub;
		printDecks(deck1,deck2);
		std::cout <<"CPU removes " << sub << " cards from the other deck\n"; 
		deck == 1 ? deck2 -= sub : deck1 -= sub; //same move opposite deck
		if(deck1<=0 && deck2<=0) break;
	}
	std::cout << "CPU WINS\n";
return 0;
}
