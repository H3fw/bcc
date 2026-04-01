#include <bits/stdc++.h>
using namespace std;

int main() {
  const double PI = 3.14159265359;
  int height, radius;

  cout << "Digite a altura e o raio do Cilindo, Separados por um espaço: ";
  cin >> height >> radius;
  cout << endl << "o Volume do cilindro é de " << PI * pow(radius, 2) * height;

  return 0;
}
