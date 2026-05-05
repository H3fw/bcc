#include <bits/stdc++.h>
using namespace std;

signed main() {
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);

  cout << "Escreva dois valores inteiros (separados por um espaço): " << endl;
  double a, b;
  cin >> a >> b;

  double l = min(a, b), r = max(a, b);

  cout << "Celsius - Fahrenheit" << endl;
  for (double i = l; i <= r; i += 2) {
    cout << i << " - " << i * (9.0 / 5.0) + 32 << endl;
  }
}
