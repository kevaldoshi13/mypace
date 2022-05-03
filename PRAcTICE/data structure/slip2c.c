#include <stdio.h>
#include <stdlib.h>
struct node
{
	int data;
	struct node *next;
};
typedef struct node NODE;
NODE *alloc(int);
NODE *create();
NODE *findlast(NODE *);
NODE *unionlist(NODE *,int);
viod display(NODE *);
NODE *getnode();
int main()
{
	node *list1=NULL,*list2=NULL,*list3=NULL;
	printf("\ncreate first list.")
	scanf("%d",&temp -> data);
	temp -> next=NULL;
	return temp;
}
NODE *search(NODE *list,int val)
{
	NODE *ptr,*temp,*list=NULL;
	int n,i;
	printf("\n enter how many node :");
	scanf("%d",&n);
	for(i=0;i<n;i++)
	{
		temp=getnode();
		if(list==NULL)
		{
			list=temp;
		}
		else
		{
			ptr=findlast(list);
			ptr->next=temp;
		}
	}
	return(list);
}