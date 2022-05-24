#include <iostream>
#include <conio.h>
using namespace std;
class Square
{
    friend class rectangle;

public:
    int side;
    Square(int s)
    {
        side = s;
    }
};
class Rectangle
{
    int length;   
    int breadth;

public:
    int getArea()
    {
        return length * breadth;
    }
    void shape(Square a)
    {
        length = a.side;
        breadth = a.side;
    }
};
int main()
{
    int a;
    cout << "\nenter side of square: ";
    cin >> a;
    Square square(a);
    Rectangle rectangle;
    rectangle.shape(square);
    cout << rectangle.getArea();
    getch();
}