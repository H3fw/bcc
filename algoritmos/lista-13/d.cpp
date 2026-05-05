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

  long long media = 0;
  double harmonica = 0;
  for (int i = 0; i < n; i++) {
    int a;
    cin >> a;
    media += a;
    harmonica += 1.0 / a;
  }

  cout << "Média Aritmética: " << double(media) / n
       << " | Média Harmônica: " << 5 / harmonica << endl;
}
