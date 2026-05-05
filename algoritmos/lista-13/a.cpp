#include <bits/stdc++.h>
using namespace std;

signed main() {
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);

  cout << "Escreva dois valores inteiros (separados por um espaço): " << endl;
  int a, b;
  cin >> a >> b;

  int l = min(a, b), r = max(a, b);

  int sum = 0;
  for (int i = l + 1; i < r; i++) {
    if (i % 2 == 0)
      continue;
    sum += i;
  }

  cout << "A soma os impares entre " << l << " e " << r
       << ", é igual a: " << sum << endl;
}
