#include <bits/stdc++.h>
using namespace std;

int main() {
  int sum;
  cout << "Digite a quantida de dinheiro em Reais: ";
  cin >> sum;

  array<int, 6> values = {50, 20, 10, 5, 2, 1};

  cout << "| ";
  for (int v : values) {
    cout << v << ": " << sum / v << " | ";
    sum -= sum / v * v;
  }
  cout << endl;

  return 0;
}
