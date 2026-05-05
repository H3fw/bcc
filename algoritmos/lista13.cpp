#include <bits/stdc++.h>
using namespace std;

int main() {
  double temperature;

  cout << "Digite a temperatura em Fahrenheit: ";
  cin >> temperature;

  cout << endl
       << "A temperatura em graus celsius é de: "
       << (5.0 / 9.0) * (temperature - 32.0) << endl;

  return 0;
}
