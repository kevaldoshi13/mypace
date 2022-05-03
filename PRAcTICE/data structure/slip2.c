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
NODE *unionlist(NODE *,NODE *);
NODE *search(NODE *,int);
void display(NODE *);
NODE *getnode();
int main()
{
    NODE *list1=NULL,*list2=NULL,*list3=NULL;
    printf("\nCreate first list.");
    list1=create();
    //display(list1);
    printf("\n create second list.");
    list2=create();
    //display(list2);
    printf("\n data in first list:");
    display(list1);
    printf("\n data in second list :");
    display(list2);
    printf("\n\n union of two list is :");
    list3=unionlist(list1,list2);
    if(list3==NULL)
    printf("\nlist of union is empty");
    else
    display(list3);
    return 0;
}
NODE *alloc(int val)
{
    NODE *temp;
    temp=(NODE *)malloc(sizeof(NODE));
    temp->data=val;
    temp->next=NULL;
    return temp;
}
NODE *getnode()
{
    NODE *temp;
    temp=(NODE *)malloc(sizeof(NODE));
    printf("\nenter the data:");
    scanf("%d",&temp->data);
    temp->next=NULL;
    return temp;

}
NODE *search(NODE *list,int val)
{
    NODE *ptr;
    for(ptr=list;ptr!=NULL && ptr->data!=val;ptr=ptr->next);
    return (ptr);
}
NODE *create()
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
    return (list);
}
NODE *findlast(NODE *list)
{
    NODE *ptr;
    for(ptr=list;ptr->next!=NULL;ptr=ptr->next);
    return(ptr);
}
NODE *unionlist(NODE *list1,NODE *list2)
{
    NODE *temp,*ptr1,*ptr2,*list3=NULL;
    int i,val;
    for(ptr1=list1;ptr1!=NULL;ptr1=ptr1->next)
    {
        temp=alloc(ptr1->data);
        if(list3==NULL)
        list3=temp;
        else
        {
            ptr2=findlast(list3);
            ptr2->next=temp;

        }
    }
    for(ptr1=list2;ptr1!=NULL;ptr1=ptr1->next)
    {
        ptr2=search(list1,ptr1->data);
        if(ptr2==NULL)
        {
            temp==alloc(ptr1->data);

            ptr2=findlast(list3);
            ptr2->next=temp;

        }
    }
    return (list3);   
}
void display(NODE *list)
{
    NODE *ptr; 
    for(ptr=list;ptr!=NULL;ptr=ptr->next);
    printf("%d->",ptr->data);
    printf("null");
}