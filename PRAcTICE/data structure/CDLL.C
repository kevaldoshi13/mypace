#include<stdio.h>
#include<stdlib.h>
struct node 
{
    int data;
    struct node *next;
    struct node *prev;
};
int main()
{
    int n, i,item;
    struct node *p,*new_node,*head;
    printf("enter the number of nodes");
    scanf("%d",&n);
    
    printf("enter the '0'th index node");
    scanf("%d",&item);
    new_node =(struct node*)malloc(sizeof(struct node *));
    new_node-> data =item;
    new_node-> next=NULL;
    new_node->prev = NULL;
    head = new_node;
    p=new_node;
    for(i=1;i<n;i++)
    {
        printf("enter thhe next node ");
        scanf("%d",&item);
        new_node =(struct node *) malloc(sizeof(struct node *));
        new_node->data=item;
        new_node->next = NULL;
        new_node->prev= p;
        p->next = new_node;
        p = p->next;
    }
    p= head;
    while(p!=NULL)
    {
        printf("%d\t",p->data);
        p= p->next;
    }
}
