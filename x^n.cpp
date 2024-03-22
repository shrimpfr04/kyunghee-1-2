#include <iostream>
using namespace std;
void main() {
    float x, n, dx, num, anal;
    //differentiation
    cout << " n ? = ";
    cin >> n;
    cout << " x, dx ? = ";
    cin >> x >> dx;
    anal = n * pow(x, n - 1);
    num = (pow(x + dx, n) - pow(x, n)) / dx;
    cout << " num " << num << " anal " << anal << endl;
    cout << " error = " << (num - anal) / anal * 100 << "%\n";

    // integration
    float a, b;
    int N;
    cout << " a, b, N = ";
    cin >> a >> b >> N;
    anal = (pow(b, n + 1) - pow(a, n + 1)) / (n + 1);
    dx = (b - a) / N;
    num = 0;
    for (int i = 0; i < N; i++) {
        num += pow(a + dx * i, n) * dx;
    }
    cout << " num " << num << " anal " << anal << endl;
    cout << " error = " << (num - anal) / anal * 100 << "%\n";
}
