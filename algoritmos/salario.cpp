#include <bits/stdc++.h>
using namespace std;

int main() {
  double wage;

  cout << "Digite seu Salário: ";
  cin >> wage;
  double tax = 29.0 / 100 * wage;
  cout << endl << "Salário Líquido: " << wage - tax;

  return 0;
}
