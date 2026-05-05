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

  int minum;
  cin >> minum;
  int maxnum = minum;

  for (int i = 1; i < n; i++) {
    int a;
    cin >> a;
    minum = min(minum, a);
    maxnum = max(maxnum, a);
  }

  cout << "A amplitude de " << minum << " e " << maxnum
       << ", é igual a: " << maxnum - minum << endl;
}
