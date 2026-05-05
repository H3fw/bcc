#include <bits/stdc++.h>
using namespace std;

signed main() {
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);

  cout << "Quantos valores? " << endl;

  int n;
  while (!(cin >> n)) {
    cout << "Input Inválido! Digite um inteiro positivo." << endl;
    cin.clear();
    cin.ignore(10000, '\n');
  }

  double sum1 = 0;
  for (double i = 0; i < n; i++) {
    sum1 += (i * 2 + 1) / (2 + i * 3);
  }

  double sum2 = 0;
  int state = 1;
  for (double i = 1; i <= n; i++) {
    sum2 += 1 / i * state;
    state *= -1;
  }

  cout << sum1 << " | " << sum2 << endl;
  ;
}
