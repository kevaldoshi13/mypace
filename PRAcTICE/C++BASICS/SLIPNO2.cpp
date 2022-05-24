#include<iostream>
#include<conio.h>
using namespace std;
/*2. Write a C++ program to calculate  Volume of cone, sphere and cylinder
by using function overloading.
*/
float vol(int,int);
float vol(float);
int vol(float,int);
int main()
{
    int radius,height,radius2,height2;
    float radius1;      
    cout<<"enter radius and height of a cylinder:\n";
    cin>>radius>>height;
    cout<<"enter radius of sphere:\n";
    cin>>radius1;
    cout<<"enter the radius and height of a cone:\n";
    cin>>radius2>>height2;
    cout<<"\n volume of cylinder is "<<vol(radius,height);
    cout<<"\n volume of sphere is "<<vol(radius1);
    cout<<"\n volume of cone is "<<vol(radius2,height2);
    getch();
}
float vol(int radius,int height)
    {
        return(3.14*radius*radius*height);
    }
float vol(float radius1)
    {
        return((4*3.14*radius1*radius1*radius1)/3);
    }
int vol(float radius2,int height2)
    {
        return(0.33*3.14*radius2*radius2*height2);
    }
