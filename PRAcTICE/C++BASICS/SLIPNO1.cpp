#include <iostream>
#include <conio.h>
using namespace std;
//1.Write C++ program to check maximum and minimum number ( Use inline
//function and conditional operator to check)

class max
{
    public:
    inline int maximum(int a, int b)
    {
        return a>b?a:b;
    }
    inline int minimum(int a,int b)
    {
        return a<b?a:b;
    }
};
int main()
{
    int a,b;
    class max m;
    cout<<"\n enter tow number:";
    cin>>a>>b;
    cout<<"\nNumber 1st:"<<a<<endl;
    cout<<"\nNumber 2nd:"<<b<<endl;
    cout<<"\nmaximum number is:"<<m.maximum(a,b)<<endl;
    cout<<"\nminimum is:"<<m.minimum(a,b)<<endl;
    getch();
}