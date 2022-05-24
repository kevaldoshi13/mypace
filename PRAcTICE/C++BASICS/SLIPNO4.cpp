#include <stdio.h>
#include <iostream>
#include <conio.h>
using namespace std;
class worker
{
    char name[10];
    int hr;

public:
    void accept()
    {
        cout << "enter name: ";
        cin >> name;
        cout << "enter hours: ";
        cin >> hr;
    }
    void calculate(int rate = 20)
    {
        cout << "salary of worker is Rs." << (hr * 10) * rate;
    }
};
int main()
{
    worker w;
    w.accept();
    w.calculate();
    getch();
}
