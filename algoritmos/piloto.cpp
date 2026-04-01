#include <bits/stdc++.h>
using namespace std;

int main() {
  string name;
  int distance, time;

  cout << "Digite o nome do piloto: ";
  getline(cin, name);
  cout << endl;
  cout << "Digite a distância percorrida em km: ";
  cin >> distance;
  cout << endl;
  cout << "Digite o tempo gasto em horas: ";
  cin >> time;
  cout << endl;

  cout << "A velocidade média de " << name << " foi de "
       << 1.0 * distance / time << " km/h" << endl;

  return 0;
}
