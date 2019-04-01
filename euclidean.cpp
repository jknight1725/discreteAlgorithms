#include <iostream>
#include <cmath>

uint32_t euclidean(uint32_t a, uint32_t b) {
	return (a%b == 0) ? b : euclidean(b,a%b);
}

int main() {
	uint32_t a, b = 1;
	std::cout << "This program attempts to find the GCD of two numbers";
	std::cout << "\nEnter the first number\n";
	std::cin >> a;
	std::cout << "Enter the second number\n";
	std::cin >> b;
	std::cout << "GCD(" << a << " " << b << ") = " << euclidean(a,b) <<'\n';
	



return 0;
}
