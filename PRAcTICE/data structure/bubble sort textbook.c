#include <stdio.h>
#define MAX 20
void bubble_sort (int A[MAX], int n);
void display (int A[MAX], int n);
void main()
{
    int A[MAX], n,i;
    printf("enter the number of elements in the array: ");
    scanf("%d",&n);
    printf("\n enter the elements : \n\n");
    for(int i=0; i<n;i++)
    {
        printf("array[%d] = ",i);
        scanf("%d", &A[i]);
    }
    bubble_sort(A,n);
    display(A,n);
   }
   void bubble_sort(int A[MAX],int n)
   {
   	int i,j,temp;
   	for (i=0;i<n;i++)
   	{
   		for(j=0; j<n-i-1;j++)
   		{
   			if(A[j] > A[j+1])
   			{
   				temp = A[j];
   				A[j] = A[j+1];
   				A[j+1] = temp;
   			}
   		}
   	}
	}
void display(int A[MAX], int n )
{
	for (int i=0;i<n; i++)
	{
		printf("%d",A[i]);
	}
}

