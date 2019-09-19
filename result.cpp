//Stack

/*Stack.h*/
#include<ostream>
using namespace std;

class Stack
{
	int *arr;
	int top;
	int stack_size;
public:
	Stack();
	Stack(int n);
	Stack(Stack &x);
	~Stack();
	void push(int n);
	int pop();
	void display();
	Stack operator+(int n);
	void operator=(const Stack &object);
	bool operator!=(const Stack &object);
	friend ostream &operator<<(ostream &out, const Stack &x); 
};

/*Stack.cpp*/
#include"Stack.h"
//#include<cstdio>
#include<cstdlib>
#include<iostream>
using namespace std;
//#define Stack_size 15

//default constructor
Stack::Stack()
{
	cout<<"Stack::Stack()"<<endl;
	stack_size=100;
	top=-1;
	arr=(int*)malloc(stack_size*sizeof(int));
	
}


//paramerised constructor
Stack::Stack(int n)
{
	cout<<"Stack::Stack(int n)"<<endl;
	top=-1;
	stack_size = n;
	arr = (int*)malloc(stack_size*sizeof(int));	
}

//distructor
Stack::~Stack()
{
	cout<<"Stack::~Stack()"<<endl;
	//free(arr);
	top=-1;
}

//+ operator with integer argument
Stack Stack::operator+(int n)
{
	cout<<"Stack Stack::operator+(int n)"<<endl;
	Stack temp;
	temp.top = this->top;
	temp.stack_size = this->stack_size;
	temp.arr = (int*)malloc(stack_size*sizeof(int));
	//temp.arr = this->arr;
	for(int i=this->top;i>=0;i--)
	{
		temp.arr[i] = this->arr[i]+n;
	}
	return temp;	
}

//ostream& operator<<(ostream &out, Stack &x)
//{
//	out<<x;
//}

//copy constructor
Stack::Stack(Stack &object)
{
	cout<<"Stack::Stack(Stack &object)"<<endl;
	this->arr = object.arr;
	this->top = object.top;
	this->stack_size = object.stack_size;
	for(int i=object.top;i>=0;i--)
	{
		this->arr[i] = object.arr[i];
	}
}

//= operator with object argument
void Stack::operator=(const Stack &object)
{
	cout<<"void Stack::operator=(const Stack &object)"<<endl;
	free(this->arr);
	arr=NULL;
	this->arr = object.arr;
	this->top = object.top;
	this->stack_size = object.stack_size;
	for(int i=object.top;i>=0;i--)
	{
		this->arr[i] = object.arr[i];
	}
}

//ostream with object argument
ostream &operator<<(ostream &out, const Stack &x)
{
	for(int i=x.top;i>=0;i--)
	{
		out<<"->"<<x.arr[i];
	}	
}
//push function
void Stack::push(int x)
{
	cout<<"void Stack::push(int x)"<<endl;
	if(top!=stack_size)
	{
		top++;
		arr[top] = x;
	}
	else
	{
		cout<<"Stack overflow.."<<endl;
	}
}

//pop function
int Stack::pop()
{
	cout<<"int Stack::pop()"<<endl;
	if(top!=-1)
	{
		top--;
		return arr[top];
	}
	else
	{
		cout<<"Stack underflow.."<<endl;
		return 0;
	}
}
//!=operator
bool Stack::operator!=(const Stack &object)
{
	//cout<<this<<endl;
	//cout<<&object<<endl;
	int i=object.top;
	int flag=0;;
	while(i>=0)
	{
		if(this->arr[i] == object.arr[i])
		{
			flag=1;	
		}
		else
		{
			flag=0;	
		}
	i--;
	}
	if(flag==1)
	{
		cout<<"true";
		return false;
	}
	else
	{
		cout<<"false";
		return true;	
	}
}

//display function
void Stack::display()
{
	cout<<"void Stack::display()"<<endl;
	if(top!=-1)
	{
		for(int i=top;i>=0;i--)
		{
			printf("%d ->",arr[i]);	
		}
	cout<<endl;
	}
	else
		cout<<"Stack is empty.."<<endl;	
}

/*main.cpp*/
#include"Stack.h"
#include<cstdio>
#include<iostream>
using namespace std;

int main()
{
	cout<<"...start s1..."<<endl<<endl;	
	Stack s1;
	s1.push(10);
	s1.push(20);
	s1.push(30);
	//s1.display();
	cout<<s1;
	cout<<"...end s1..."<<endl<<endl;
/*
	Stack s2;
	s2.push(40);
	s2.push(50);
	s2.display();
*/
	cout<<"...start s2..."<<endl<<endl;
	Stack s2(13);
	s2.push(40);
	s2.push(50);
	s2.push(60);
	//s2.push(40);
	//s2.display();
	cout<<s2;
	cout<<"...end s2..."<<endl<<endl;

	s1=s2;
	//s1.display();
	//cout<<"...start s3..."<<endl<<endl;
	//Stack s3(s2);
	//s3.display();
	//s3=s1+100;
	//s3.display();
	//cout<<s3;
	//cout<<"...end s3..."<<endl<<endl;
	cout<<"...start if..."<<endl<<endl; 
	cout<<"*************************"<<endl;	
	cout<<s2<<endl;
	cout<<s1<<endl;
	cout<<"*************************"<<endl;
	if(s1 != s2)
	{
		
		cout<<"-->>"<<s2<<endl;	
	}
	cout<<"...end if..."<<endl<<endl;
}

/*...................................................................................................................................*/
//Queue
/*Queue.h*/
#ifndef _QUEUE__H_
#define _QUEUE__H_
#include<iostream>
using namespace std;

class Queue
{
	int f;
	int r;
	int *arr;
	int size;
public:
	Queue();
	~Queue();
	void enqueue(int);
	int dequeue();
	void display();
};
#endif

/*Queue.cpp*/
#include"Queue.h"

Queue::Queue()
{
	f=-1;
	r=-1;
	cout<<"Enter number : ";
	cin>>size;
	arr = new int[size];
}
Queue::~Queue()
{
	f=-1;
	r=-1;
	delete arr;
}
void Queue::enqueue(int data)
{
	//Queue is not full
	if(r!=size-1)
	{
		if(f==-1)
		{
			f++;
		}
		r++;
		arr[r] = data;
	}
	else
	{
		cout<<"Queue is full.."<<endl;
	}
	
}
int Queue::dequeue()
{
	//empty?
	if(f!=-1)
	{
		int val = arr[f];
		if(f==r)
		{
			r=f=-1;
		}
		else
		{
			f++;
		}
		return val;
		
	}
	else
	{
		cout<<"Queue is empty..."<<endl;
	}
}
void Queue::display()
{
	//queue is empty
	if(r!=-1)
	{
		int i=f;
		while(i<=r)
		{
			cout<<arr[i]<<"=>";
			i++;
		}
		cout<<endl;
	}
	else
	{
		cout<<"Queue is empty.."<<endl;
	}
}

/*main.cpp*/
#include"Queue.h"

int main()
{
	Queue q;
	q.enqueue(10);
	q.enqueue(20);
	q.enqueue(30);
	q.enqueue(40);
	q.enqueue(50);
	q.dequeue();
	q.display();
}

/*...................................................................................................................................*/
//Circular Queue
//CQueue.h


#ifndef __QUEUE_H__
#define __QUEUE_H__

#include<iostream>
#include<ostream>

using namespace std;

#define SIZE 10


class Queue
{
	int arr[SIZE];
	int f;
	int r;

public:
	
	Queue()
	{
		f=r=-1;
		int i=0;
		while(i<SIZE)
		{
			arr[i]=0;
			i++;
		}
	}

	~Queue()
	{
		f=r=-1;
	}


	int isFull()
	{
		if( (f==r+1) || (f==0 && r==SIZE-1) )
			return 1;
	
		return 0;
	}

	int isEmpty()
	{
		if(f==-1)
			return 1;
		else
			return 0;
	}


	friend ostream& operator<<(ostream& out, Queue& q);

	void enqueue(int data)
	{
		if(!isFull())
		{
			//first element???
			if(f==-1)
			{
				f=0;
			}

			if(r==SIZE-1)
				r=0;
			else
				r++;

			arr[r] = data;
			cout<<*this;
		}
		else
		{
			cout<<"Queue is full"<<endl;
		}
	}


	int dequeue()
	{

		if(isEmpty())
		{
			cout<<"Queue is underflow"<<endl;
			return -1;
		}
		else
		{
			int val = arr[f];
			arr[f]=0;
			if(f==r)
			{
				f=r=-1;
			}
			else
			{
				if(f==SIZE-1)
					f=0;
				else
					f++;
			}

			return val;
		}
	}

	void operator<<(int x)
	{
		//q1<<58;
		//q1.operator<<(int)
		enqueue(x);
	}

	Queue operator+(const Queue &x)
	{
		//q1+q2
		//q1 >>> this
		//q2 >>> x

		Queue tmp;
		
		
		int i=0;
		while(i<SIZE)
		{
			tmp.arr[i] = this->arr[i] + x.arr[i];
			i++;
		}

		tmp.f = 0;
		tmp.r = SIZE-1;
		return tmp;

	}

	
};

ostream& operator<<(ostream& out, Queue& q)
{

	if(q.isEmpty())
	{
		out<<"Queue is empty"<<endl;
	}
	else
	{
		int i=q.f;
		while(i!=q.r)
		{
			out<<q.arr[i]<<",";
			if(i==SIZE-1)
				i=0;
			else
				i++;
		}
		out<<q.arr[i];
		out<<endl;
	}
	return out;	
}



#endif

//main.cpp



#include "Queue.h"

int main()
{

	Queue q1;
	q1.enqueue(10);
	q1.enqueue(20);
	q1.enqueue(30);
	q1.enqueue(40);
	q1.enqueue(50);
	cout<<q1<<endl;
	q1.dequeue();
	cout<<q1<<endl;

	q1<<58;
	cout<<q1<<endl;
	//q1.operator<<(int)

	Queue q2=q1;
	cout<<q2<<endl;	
	q2.dequeue();
	cout<<q2<<endl;	


	Queue q3=q1+q2;
	cout<<q3<<endl;	

}

/*...................................................................................................................................*/
//Double Ended Queue
//main.c


#include <stdio.h>
#include <stdlib.h>

int size=0;
int *arr=0;

int f=-1;
int r=-1;

int isFull()
{
	if(f==0 && r==size-1)
		return 1;
	else
		return 0;
}

int isEmpty()
{
	if(f==-1)
		return 1;
	else
		return 0;
}


void init()
{
	printf("Enter queue size: ");
	scanf("%d", &size);

	arr = (int*) malloc(size * sizeof(int));

}

void fini()
{
	free(arr);
}

void displayQueue()
{
	if(isEmpty())
	{
		printf("Queue is empty\n");
	}
	else
	{
		int i=f;
		while(i<=r)
		{
			printf("%d,", arr[i]);
			i++;
		}
		printf("\n");
	}
}


void insertFromF(int data)
{
	if(!isFull())
	{
		//first element???
		if(f==-1)
		{
			f++;
			r++;
			arr[r]=data;
			return;			
		}		
		else if(f!=0)    //empty space after F)]
		{
			f--;
			arr[f]=data;
			return;
		}
		else if(r+1 <= size-1)	//empty space before R)
		{
			int i=r;
			r++;
			while(i>=f)
			{
				arr[i+1]=arr[i];
				i--;
			}
			arr[f]=data;
			return;
		}
		else
		{
			printf("something went wrong... gadbad...\n");
		}
		
		
	}
	else
	{
		printf("Queue is full\n");
	}
}


void insertFromR(int data)
{
	if(!isFull())
	{
		//first element???
		if(f==-1)
		{
			f++;
			r++;
			arr[r]=data;
			return;			
		}		
		else if(r+1 <= size-1)    //empty space after R)]
		{
			r++;
			arr[r]=data;
			return;
		}
		else if(f!=0)		//empty space before F)
		{
			int i=f;
			f--;
			while(i<=r)
			{
				arr[i-1]=arr[i];
				i++;
			}
			arr[r]=data;
			return;
		}
		else
		{
			printf("something went wrong... gadbad...\n");
		}
		
		
	}
	else
	{
		printf("Queue is full\n");
	}
}

int removeFromF()
{

	if(isEmpty())
	{
		printf("Queue is underflow\n");
		return -1;
	}
	else
	{
		int val = arr[f];
		if(f==r)
		{
			f=r=-1;
		}
		else
		{
			f++;
		}
		//displayQueue();
		return val;
	}
}

int removeFromR()
{

	if(isEmpty())
	{
		printf("Queue is underflow\n");
		return -1;
	}
	else
	{
		int val = arr[r];
		if(f==r)
		{
			f=r=-1;
		}
		else
		{
			r--;
		}
		//displayQueue();
		return val;
	}
}


int main()
{

	init();

//	int i=0;
//	while(++i != 8)
	{
		insertFromR(10);
		insertFromF(20);
		insertFromR(30);
		insertFromF(40);
		insertFromR(50);
		removeFromF();
		insertFromR(80);
		displayQueue();

	}

	
	fini();
}

/*...................................................................................................................................*/
//sorting alogrithm
#include <stdio.h>

enum TYPE {ascending=0, descending};

void swap(int *x, int *y)
{
	int tmp=*x;
	*x=*y;
	*y=tmp;
}

int part(int *arr, int l, int h)
{
	int j=l;
	int i=l;
	int p=h;
	
	while(j<p)
	{
		if(arr[j] < arr[p])
		{
			swap(&arr[j], &arr[i]);
			i++;
		}
		j++;
	}
	
	swap(&arr[i], &arr[p]);
	
	return i;
}

void quickSort(int *arr, int l, int h)
{
	if(l<h)
	{
		int index = part(arr, l, h);
		quickSort(arr,l,index-1);
		quickSort(arr,index+1,h);
	}
}


void bubbleSort(int arr[], int size, int type)
{
	int flag=0;
	int loop_count=0;
	int i,j=0;
	for(i=0;i<size-1;i++)
	{
		for(j=0;j<size-1;j++)
		{
			loop_count++;
			if(type == 0)
			{
				if(arr[j+1] < arr[j])
				{
					flag=1;
					swap(&arr[j+1], &arr[j]);
				}
			}
			else
			{
				if(arr[j+1] > arr[j])
				{
					flag=1;
					swap(&arr[j+1], &arr[j]);
				}
			} //else
		} //for j
	
	if(flag == 0)
		break;
	else
		flag=0;
	
	}// for i
	printf("\nloop_count:%d\n", loop_count);
}


void selectionSort(int arr[], int size, enum TYPE type)
{
	int i=0;
	while(i<size)
	{
		int tmp=arr[i];
		int j=i+1;
		while(j<size) 
		{
			if(type == ascending)
			{
				if(arr[j] < tmp)
				{
					swap(&arr[j], &tmp);
				}
				j++;

			}
			else
			{
				if(arr[j] > tmp)
				{
					swap(&arr[j], &tmp);
				}
				j++;
			}
		}
		arr[i]=tmp;
		i++;
	}
}

void insertionSort(int arr[], int size, int type)
{
	int loop_count=0;
	int i=1;
	while(i<size) 
	{
		int j=i;
		while(j>0)
		{
			loop_count++;;
			if(type == 0)
			{
				if(arr[j] < arr[j-1])
				{
					swap(&arr[j], &arr[j-1]);
				}
				else
					break;

				j--;
			}
			else
			{
				if(arr[j] > arr[j-1])
				{
					swap(&arr[j], &arr[j-1]);
				}
				else
					break;

				j--;
			}
			
		}
		i++;
	}
	printf("\nloop_count=%d\n", loop_count);
}
void mergesort()
{




}

void display(int *arr, int size)
{
	int i=0;
	while(i<size)
	{
		printf("%d, ", arr[i]);
		i++;
	}
	printf("\n----------------------------------\n");
}

int main()
{
	int arr[] = {2, 7, 1, 12, 20, 5 , 4};
	display(arr, 7);
	selectionSort(arr, 7, ascending);
    insertionSort(arr, 7, 0);
//	bubbleSort(arr, 7, 0);
	display(arr, 7);

}	

#include<stdio.h>


void swap(int *tmp,int *arr1)
{
	int temp=*arr1;
	*arr1=*tmp;
	*tmp=temp;
	

}


void selectionSort(int *arr1,int size)
{
	for(int i=0;i<size;i++)
	{	
		int temp=arr1[i];
		for(int j=i+1;j<size;j++)
		{
			if(temp>arr1[j])
				swap(&temp,&arr1[j]);
		}
		arr1[i]=temp;		
	}
	

}




void display(int *arr,int size)
{
	for(int i=0;i<size-1;i++)
	{
		printf("[%d]👉",arr[i]);
	}
	printf("[%d]\n",arr[size-1]);

}

void Merge(int *arr1,int *arr2,int *arr3,int size)
{
	int k=0;
	for(int i=0;i<size;)
	{
		for(int j=0;j<size;)
		{
			if(arr1[i]>arr2[j])
			{
				arr3[k]=arr2[j];
				k++;
				j++;	
			}
			else
			{
				arr3[k]=arr1[i];
				k++;
				i++;
			}
		}	
	}

}




int main()
{
	int arr1[] = {1,987,54,321,27};
	int arr2[] = {989,874,6,322,32};
	int arr3[11];

	selectionSort(arr1,5);
	display(arr1,5);
	selectionSort(arr2,5);
	display(arr2,5);
	Merge(arr1,arr2,arr3,5);
	display(arr3,11);
	
	
	
}

/*...................................................................................................................................*/
//Student Linked List
//LinkedList.h#ifndef _LINKEDLIST__H_
#define _LINKEDLIST__H_
#include<ostream>
using namespace std;
#include "Node.h"
#include"Student.h"

class LinkedList
{
	Node *head;
public:
	LinkedList();
	LinkedList(Node*);
	~LinkedList();
	void Insert(const Student);
	void Append(const Student);
	Student deleteFirst();
	Student deleteLast();
	void display();
	void InsertByPosition(int,const Student);
	Student DeleteByPosition(int);
	int CountNodes();
	LinkedList(const LinkedList &);
	void DeleteAll();
	void selectionSort();
	void operator=(LinkedList &x);
	Student operator[](int n);
	void search_student(int);
	friend ostream& operator<<(ostream& out, LinkedList& x);
	LinkedList operator+(const LinkedList& x);
};
#endif

//LinkedList.cpp
#include "LinkedList.h"
#include "Student.h"
#include<ostream>
using namespace std;
LinkedList::LinkedList()
{
	head=NULL;
}

LinkedList::LinkedList(Node* ptr)
{
	head = ptr;
}

LinkedList::~LinkedList()
{
	DeleteAll();
}

void LinkedList:: Insert(const Student data)
{
	Node *temp=new Node(data,head);
	
	head=temp;
}

void LinkedList:: Append(const Student data)
{
	Node *temp=new Node(data);
	if(head==NULL)
	{
		head=temp;
	}
	else
	{
		Node* it=head;
		while(it->getNext()!=NULL)
		{
			it=it->getNext();
		}
		it->setNext(temp);
		
	}

}

Student LinkedList:: deleteFirst()
{
	
	if(head!=NULL)
	{
		Node* it=head;
		head=it->getNext();
		delete it;
		
	}
	else
	{
		cout<<"LL is Empty";
	}
	
	

}

Student LinkedList:: deleteLast()
{
	if(head!=NULL)
	{
		Node* it=head;
		while(it->getNext()->getNext()!=NULL)
		{
			it=it->getNext();


		}
		Node* temp=it->getNext();
		it->setNext(NULL);
		delete temp;
	}


}

/*void LinkedList::display()
{
	if(head!=NULL)
	{
		Node *it=head;
		while(it->getNext()!=NULL)
		{
			cout<<it->getData()<<"-->>";
			it=it->getNext();
		}
		cout<<it->getData()<<endl;
			
	}

}
*/	


void LinkedList::InsertByPosition(int pos,Student data)
{
	int c=CountNodes();
	if(pos==1)
		Insert(data);
	if(pos==c)
		Append(data);
	if(pos<1 && pos>c)
		cout<<"U r very wrong person to handle this system"<<endl;
	else
	{
		Node* it=head;
		for(int i=1;i<pos-1;i++)
		{
			it=it->getNext();
		}
		Node* temp=new Node(data);	
		temp->setNext(it->getNext());
		it->setNext(temp);
	}
	
	
}
Student LinkedList::DeleteByPosition(int pos)
{
	int c=CountNodes();
	if(pos==1)
		deleteFirst();
	if(pos==c)
		deleteLast();
	if(pos<1 && pos>c)
		cout<<"U r very wrong person to handle this system"<<endl;
	else
	{
		Node* it=head;
		for(int i=1;i<pos-1;i++)
		{
			it=it->getNext();
		}
		Node* temp=it->getNext();
		it->setNext(temp->getNext());
		temp->setNext(NULL);
		delete temp;
	}
}

int LinkedList:: CountNodes()
{
	int count=0;
	Node *it=head;
	while(it!=NULL)
	{
		count++;
		it=it->getNext();
	}
	return count;
}


LinkedList::LinkedList(const LinkedList &x)
{
	Node *it=x.head;
	this->head=NULL;
	while(it!=NULL)
	{
		this->Append(it->getData());
		it=it->getNext();
	}	
	
}

void LinkedList::DeleteAll()
{
	Node *it=head;	
	while(it!=NULL)
	{
		Node* temp=it;
		it=it->getNext();
		delete temp;
	}
}

void LinkedList::operator=(LinkedList &x)
{
	this->DeleteAll();
	this->head = NULL;
	Node *it=x.head;
	while(it!=NULL)
	{
		this->Append(it->getData());
		it=it->getNext();
	}
	
}

ostream& operator<<(ostream& out, LinkedList& x)
{
	if(x.head!=NULL)
	{
		Node *it=x.head;
		while(it!=NULL)
		{
			out<<it->getData().getName()<<"->";
			out<<it->getData().getPNR()<<"  ";
			it=it->getNext();
		}
		out<<endl;
		//out<<it->getData();
			
	}
	return out;

}

void LinkedList::selectionSort()
{
	int c = CountNodes();
	if(head!=NULL)
	{	
		
		Node *it= head;
		while(it!=NULL)
		{
			Node *itn = it->getNext();
			while(itn!=NULL)
			{
				if(it->getData().getPNR() > itn->getData().getPNR())
				{
					Node* temp = new Node();
					temp->setData(it->getData());
					it->setData(itn->getData());
					itn->setData(temp->getData());
			}
			itn=itn->getNext();
		}
		it=it->getNext();
		}
	}
	
}

Student LinkedList::operator[](int pos)
{
	Node *it = head;
	for(int i=1;i<pos;i++,it=it->getNext());
	return it->getData();
}

void LinkedList::search_student(int prn)
{
	Node *it = head;
	while(it!=NULL)
	{
		if(prn == it->getData().getPNR())
		{
			cout<<it->getData().getName()<<"->";
			cout<<it->getData().getPNR()<<endl;
			return;		
		}
		else
			it = it->getNext();	
	}
	cout<<"record not found.."<<endl;
}

LinkedList LinkedList::operator+(const LinkedList& x)
{
	LinkedList temp;
	Node *it = this->head;
	while(it!= NULL)
	{
		temp.Append(it->getData());
		it = it->getNext();
	}
	it = x.head;
	while(it!= NULL)
	{
		temp.Append(it->getData());
		it = it->getNext();
	}
	return temp;
}

//Node.h
#ifndef _NODE__H_
#define _NODE__H_
#include<iostream>
using namespace std;
#include"Student.h"
template<class T>
class Node
{
	Node<T> *next;
	T data;
public:
	Node(const T);
	Node();
	Node(const T,Node<T>*);
	void setNext(Node<T>* ptr);
	 Node* getNext();
	T getData();
	void setData(const T);
	

};
#endif

//Node.cpp
#include "Node.h"
#include<cstring>
Node::Node(const Student x)
{
	data=x;
	next=NULL;
}

Node::Node()
{
	next=NULL;
}


Node::Node(const Student x,Node* ptr)
{
	data=x;
	next=ptr;
	
}
void Node:: setNext(Node* ptr)
{
	next=ptr;
	
}

Node* Node:: getNext()
{
	return next;
}

void Node:: setData(const Student x)
{
	data=x;
}

Student Node::getData()
{
	return data;
}

//Student.h
#ifndef _Student__H_
#define _Student__H_
#include<iostream>
#include<ostream>
#include<cstring>
#include<istream>
using namespace std;
class Student
{
	char *name;
	int pnr;
public:
	Student();
	Student(const char*,int);
	~Student();
	Student(const Student&);
	//void operator>(Student&);
	
	char* getName(){return name;}
	void setName(char* n){strcpy(name,n);}
	int getPNR(){ return pnr;}
	void setPNR(int p){ pnr = p; }
	
	friend ostream& operator<<(ostream& out,const Student& x);
	friend istream& operator>>(istream& in,Student& x);
};
#endif

//Student.cpp
#include"Student.h"
#include<cstdlib>
#include<cstring>
#include<iostream>
#include<ostream>
#include<istream>
using namespace std;

Student::Student()
{
	name=new char[100];
	strcpy(name,"Nothing");
	pnr=0;

}

Student::Student(const char* c,int x)
{
	name=new char[strlen(c)+1];
	strcpy(name,c);
	pnr=x;

}

Student::Student(const Student& x)
{
	this->name = new char[strlen(x.name)+1];
	strcpy(this->name,x.name);
	this->pnr = x.pnr;

}
Student::~Student()
{
	//delete [] name;

}
/*
void Student::operator>(Student& x)
{
	if(x.getPNR() > this->getPNR())
	{
		cout<<x.getName();
	}
	else
	{
		cout<<this->getName();
	}
}
*/
ostream& operator<<(ostream& out,const Student& x)
{
	out<<x.name<<"->";
	out<<x.pnr<<endl;
	return out;
}

istream& operator>>(istream& in,Student& x)
{
	in>>x.name;
	in>>x.pnr;
	return in;
}

//main.cpp
#include "LinkedList.h"
#include "Node.h"
#include"Student.h"
#include<iostream>
using namespace std;

int main()
{
	LinkedList l1;	
	Student s("tanmay",1234);	
	Student s1("Rohit",4567);
	Student s2("Ajinkya",3546);
	Student s3("D",2546);
	
	l1.Append(s);
	l1.Append(s1);
	l1.Append(s2);
	l1.Append(s3);	
	
	cout<<l1<<endl;
	
	l1.selectionSort();	
	cout<<l1<<endl;	
	
	cout<<"Your data --> "<<l1[3]<<endl;
	
	l1.search_student(4567);
	
	
	LinkedList l2;	
	Student s4("abc",12341);	
	Student s5("def",45672);
	Student s6("ghi",35463);
	Student s7("JKL",25464);
	
	l2.Append(s4);
	l2.Append(s5);
	l2.Append(s6);
	l2.Append(s7);	
	LinkedList l3=l1+l2;	
	cout<<l3;
}

/*...................................................................................................................................*/
//Doubly Linked List
//DLinkedList.h
#ifndef _DLINKEDLIST__H_
#define _DLINKEDLIST__H_
#include"Node.h"
#include<iostream>
using namespace std;

class DLinkedList
{
	Node* head;
	Node* tail;
public:
	DLinkedList();
	~DLinkedList();
	
	void Insert(int);
	void Append(int);
	int DeleteFirst();
	int DeleteLast();
	void InsertByPosition(int,int);
	int DeleteByPosition(int);
	int CountNodes();
	void Display();	
};
#endif

//DLinkedList.cpp
#include"DLinkedList.h"
DLinkedList::DLinkedList()
{
	head = NULL;
	tail = NULL;
}

DLinkedList::~DLinkedList()
{

}

void DLinkedList::Insert(int d)
{
	Node *temp = new Node(d);
	if(head==NULL)
	{
		head=tail=temp;
		return;
	}
	temp->setNext(head);
	head->setPrev(temp);
	head = temp;
}

void DLinkedList::Append(int d)
{
	Node *temp = new Node(d);
	if(head==NULL)
	{
		head=tail=temp;
		return;
	}
	tail->setNext(temp);
	temp->setPrev(tail);
	tail = temp;
}

int DLinkedList::DeleteFirst()
{
	if(head==tail)
	{
		delete head;
		head=tail=NULL;
	}
	else
	{
		Node* temp = head;
		head = temp->getNext();
		head->setPrev(NULL);
		delete temp;
	}
}

int DLinkedList::DeleteLast()
{
	if(head==tail)
	{
		delete head;
		head=tail=NULL;
	}
	else
	{
		Node* it= tail->getPrev();
		tail->setPrev(NULL);
		it->setNext(NULL);
		delete tail;
		tail=it;
	}	
}

void DLinkedList::InsertByPosition(int pos,int d)
{
	Node *temp=new Node(d);
	int c=CountNodes();
	if(pos==1)
		Insert(d);
	if(pos==c-1)
		Append(d);
	if(pos<1 || pos>c)
		cout<<"Ur Not Eligible bro"<<endl;
	else
	{
		Node* it=head;
		for(int i=1;i<pos-1;i++)
		{
			it=it->getNext();
		}
		Node* itn=it->getNext();
		itn->setPrev(temp);
		temp->setNext(itn);
		it->setNext(temp);
		temp->setPrev(it);
	}


}

int DLinkedList::DeleteByPosition(int pos)
{
	
	int c=CountNodes();
	if(pos==1)
		DeleteFirst();
	if(pos==c)
		DeleteLast();
	if(pos<1 || pos>c)
		cout<<"Ur Not Eligible bro"<<endl;
	else
	{
		Node* it=head;
		for(int i=1;i<pos-1;i++)
		{
			it=it->getNext();
		}
		Node* temp=it->getNext();
		Node* itn=temp->getNext();
		it->setNext(temp->getNext());
		itn->setPrev(it);
		
	}



}

void DLinkedList::Display()
{
	if(head!=NULL)
	{
		Node *it = head;
		while(it->getNext()!=NULL)
		{
			cout<<it->getData()<<"=>";
			it=it->getNext();
		}
		cout<<it->getData()<<endl;
	}
	else
	{
		cout<<"DLL is empty"<<endl;
	}
}


int DLinkedList::CountNodes()
{
	int count=0;
	Node *it = head;
	while(it!=NULL)
		{
			count++;
			it=it->getNext();
		
		}
	return count;
}

//Node.h
#ifndef _NODE__H_
#define _NODE__H_
#include<iostream>
using namespace std;
class Node
{
	Node* Prev;
	int Data;
	Node* Next;
public:
	Node();
	~Node();
	Node(int);
	Node(Node*,int,Node*);
	Node* getPrev();
	void setPrev(Node*);
	Node* getNext();
	void setNext(Node*);
	int getData();
	void setData(int);
	
};
#endif

//Node.cpp
#include"Node.h"

Node::Node()
{
	Prev=NULL;
	Data = 0;
	Next = NULL;
}

Node::~Node()
{

}

Node::Node(int d)
{
	Prev = NULL;
	Data = d;
	Next = NULL;
}

Node::Node(Node* p,int d,Node* n)
{
	Prev = p;
	Data = d;
	Next = n;
}

Node* Node::getPrev()
{
	return Prev;
}

void Node::setPrev(Node* p)
{
	Prev =p;
}

Node* Node::getNext()
{
	return Next;
}

void Node::setNext(Node* n)
{
	Next=n;
}

int Node::getData()
{
	return Data;
}

void Node::setData(int d)
{
	Data = d;
}

//main.cpp
#include"DLinkedList.h"
#include"Node.h"

int main()
{
	DLinkedList l1;
	l1.Insert(10);
	l1.Insert(20);
	l1.Insert(30);
	//l1.DeleteFirst();
	//l1.Insert(40);
	//l1.Insert(50);
	l1.Append(60);
	l1.Display();
	l1.DeleteLast();
	//l1.Append(70);
	//l1.DeleteFirst();
	l1.Display();
	l1.InsertByPosition(3,1900);
	l1.Display();
	l1.DeleteByPosition(2);
	l1.Display();
}

/*...................................................................................................................................*/
//Circular Linked List
//CLinkedList.h
						
#ifndef __CLinkedList_H__
#define __CLinkedList_H__

#include "Node.h"
#include <ostream>
#include <iostream>
using namespace std;

class CLinkedList
{
	Node * head;
	void deleteAllNodes();	
public:
	CLinkedList();
	CLinkedList(int startValue);
	~CLinkedList();
	//CLinkedList(const CLinkedList &);
	//void operator=(const CLinkedList &);
	void insert(int data);
	void append(int data);
	void deleteFirst();
	void deleteLast();	
	friend ostream& operator<<(ostream&, CLinkedList&);
};

#endif

//CLinkedList.cpp
#include <iostream>
#include "CLinkedList.h"
using namespace std;

CLinkedList::CLinkedList()
{
	head=NULL;
}

CLinkedList::CLinkedList(int startValue)
{
	Node *tmp = new Node(startValue);
	head=tmp;
	tmp->setNext(head);
}

CLinkedList::~CLinkedList()
{
	cout<<"CLinkedList::~CLinkedList"<<endl;
	deleteAllNodes();
}

CLinkedList::CLinkedList(const CLinkedList &x)
{
/*
	//CLinkedList l2=l1
	//this >> l2
	//x >> l1
	this->head=NULL;
	Node *it = x.head;
	do
	{
		this->append(it->getData());
		it=it->getNext();
	}
	while(it != x.head);
*/  
}

void CLinkedList::operator=(const CLinkedList &x)
{
/*	//l2=l1
	//this >> l2
	//x >> l1
	this->deleteAllNodes();
	Node *it = x.head;
	while(it != NULL)	
	{
		this->append(it->getData());
		it=it->getNext();
//		it++;
	}
*/
}

void CLinkedList::deleteAllNodes()
{
	//go to last node...
	while(head != NULL)
	{
		deleteLast();
	}

}

void CLinkedList::insert(int data)
{
	Node *tmp = new Node(data, head);

	if(head == NULL)
	{
		head=tmp;
		tmp->setNext(head);
		return;
	}

	Node *it=head;
	while(it->getNext() != head)	
	{
		it=it->getNext();
	}

	it->setNext(tmp);
	head=tmp;
}

void CLinkedList::append(int data)
{
	Node *tmp = new Node(data, head);

	if(head == NULL)
	{
		head=tmp;
		tmp->setNext(head);
		return;
	}

	Node *it=head;
	while(it->getNext() != head)	
	{
		it=it->getNext();
	}

	it->setNext(tmp);
	tmp->setNext(head);
}

void CLinkedList::deleteFirst()
{
	//do we have something to delete??
	if(head != NULL)
	{
		if(head == head->getNext())
		{
			Node *tmp=head;
			head=NULL;
			delete tmp;		
		}
		else
		{
			//Swap...
			int t=head->getData();
		head->setData(head->getNext()->getData());			
			head->getNext()->setData(t);

			Node *tmp=head->getNext();
			head->setNext(tmp->getNext());
			delete tmp;
		}
	}
}

void CLinkedList::deleteLast()
{
	//do we have something to delete??
	if(head != NULL)
	{
		//Only one node
		if(head == head->getNext())
		{
			Node *tmp=head;
			head=NULL;
			delete tmp;		
		}
		else
		{
			//Swap...
			Node *it=head;
			while(it->getNext()->getNext() != head)
				it=it->getNext();
						
			Node *tmp=it->getNext();

			it->setNext(head);
			delete tmp;
		}
	}
}

ostream& operator<<(ostream& out, CLinkedList& x)
{
	//empty???
	if(x.head == NULL)
	{
		out<<"CLL is empty...\n"<<endl;
		return out;
	}

	//go to last node...
	Node *it=x.head;
	do
	{
		out<<it->getData()<<"-->";
		it=it->getNext();
	}
	while(it != x.head);
	return out;
}

//Node.h


class Node
{
	int data;
	Node *next;

public:
	Node();
	Node(int);
	Node(int, Node*);
	~Node();
	//Node(Node &);
	//void operator=(Node &);
	//void operator++(int x);	
	Node* getNext();
	void setNext(Node*);
	int getData();
	void setData(int);
};

//Node.cpp
#include <iostream>

#include "Node.h"
using namespace std;

Node::Node()
{
	data=0;
	next=NULL;
}

Node::Node(int d)
{
	this->data=d;
	this->next=NULL;
}

Node::Node(int d, Node* ptr)
{
	this->data=d;
	this->next=ptr;
}

Node::~Node()
{
	next=NULL;	
}

Node::Node(Node &x)
{	/*
	this->data=x.data;
	this->next=NULL;
	*/
}

void Node::operator=(Node &x)
{
/*
	this->data=x.data;
	this->next=NULL;
	*/
}

void Node::operator++(int x)
{/*
	cout<<"here...."<<endl;
*/	
}

Node* Node::getNext()
{
	return next;
}

void Node::setNext(Node* ptr)
{
	next=ptr;	
}

int Node::getData()
{
	return data;
}

void Node::setData(int x)
{
	data=x;
}

//main.cpp

#include "CLinkedList.h"


int main()
{
	CLinkedList l1;
	int i;
	for(i=0;i<15;i++)
	{
		if(i%2==0)
		{
			l1.insert(i);
			cout<<l1<<endl;
		}
		else
		{
			l1.append(i);
			cout<<l1<<endl;
		}
	}


	for(i=0;i<5;i++)
	{
		if(i%2==0)
		{
			l1.deleteFirst();
			cout<<l1<<endl;
		}
		else
		{
			l1.deleteLast();
			cout<<l1<<endl;
		}
	}

	cout<<l1<<endl;
	
	{
		//CLinkedList l2(l1);
		//cout<<"==================="<<endl;
		cout<<l2<<endl;
	}

}

/*...................................................................................................................................*/
//Tree
//Tree.h

#ifndef _TREE__H_
#define _TREE__H_

#include"Node.h"
class Tree
{
	Node* root;
public:
	Tree();
	Tree(Tree& );
	//void operator=(Tree& );
	Node* insert(int data);
	Node* insert( Node* ,int );
	void inorder();
	void inorder( Node* );
	void preo(Node* root);
	void deletenode(int );
	Node* deletenode(Node* ,int );
	int getMinValue(Node* );
		

};

#endif

//Tree.cpp
#include<iostream>
using namespace std;

#include"Tree.h"

Tree::Tree()
{
	root=NULL;
}

Tree::Tree(Tree& x )
{
	//t2---this
	//T-----x
	this->root=x.root;
	preo(root);
	
}

void Tree::preo(Node* root)
{
	if(root != NULL)
	{
	insert(root->getdata());
	preo(root->getleft());
	preo(root->getright());
	}
}	
Node* Tree::insert(int data)
{
	if(root==NULL)
		root=new Node(data);
	else
		root=insert(root,data);
		
}

Node* Tree::insert(Node* root,int data)
{	
	if(root==NULL)
	{
		Node* temp=new Node(data);
		return temp; 
	}
	else
	{	
		if( data < root->getdata() )
		{
			root->setleft(insert(root->getleft(),data));
		}
		else if(data > root->getdata())
		{
			root->setright(insert(root->getright(),data));
		}
	}
return root;


}

int Tree::getMinValue(Node* root)
{
	while(root->getleft())
		root=root->getleft();

	return root->getdata();
}


void Tree::deletenode(int data)
{
	deletenode(root, data);

}
Node* Tree::deletenode(Node* root,int data)
{
	if(root==NULL)
		return root;
	else if(data < root->getdata())
	{
		root->setleft(deletenode(root->getleft(),data));
	}
	else if(data >root->getdata())
	{
		root->setright(deletenode(root->getright(),data));
	}
	else
	{
		if(root->getleft()==NULL)//only right node is present
		{
			Node* ret=root->getright();
			free(root);
			return ret;
		}
		else if(root->getright()==NULL)//only left node is present
		{

			Node* ret=root->getleft();
			free(root);
			return ret;
		}
		else		//both side node present
		{
			root->setdata(getMinValue(root->getright()));
			root->setright(deletenode(root->getright(),root->getdata()));
		}
	}
	return root;

}



void Tree::inorder()
{	
	//cout<<"I am in inorder()";
	inorder(root);
}

void Tree::inorder(Node* root)
{
	//cout<<"I am in inorder(Node* root)";
	if(root != NULL)
	{
	inorder(root->getleft());
	cout<<root->getdata();
	inorder(root->getright());
	}
}

//Node.h

#ifndef _NODE__H_
#define _NODE__H_


class Node
{
	int data;
	Node* left;
	Node* right;
public:
	Node();
	Node(int );
	Node(int ,Node* );
	Node(Node* ,int );
	Node(Node* ,int ,Node* );
	~Node();
	int getdata();
	void setdata(int );
	Node* getleft();
	void setleft(Node* );
	Node* getright();
	void setright(Node* );

};
#endif

//Node.cpp
#include"Node.h"
#include<iostream>
using namespace std;

Node::Node()
{
	data=0;
	left=NULL;
	right=NULL;
}
Node::Node(int x)
{
	data=x;
	left=NULL;
	right=NULL;
}
Node::Node(int x ,Node* l )
{
	data=x;
	left=l;
	right=NULL;
}
Node::Node(Node* r ,int x )
{
	data=x;
	left=NULL;
	right=r;
}

Node::Node(Node* l,int x,Node* r)
{
	
	data=x;
	left=l;
	right=r;
}
Node::~Node()
{

}

int Node::getdata()
{
	return data;
}

void Node::setdata(int x)
{
	data=x;
}

Node* Node::getleft()
{
	return left;
}

void Node::setleft(Node* x)
{
	left=x;
}

Node* Node::getright()
{
	return right;
}
void Node::setright(Node* x)
{
	right=x;
}

//main.cpp
#include<iostream>
using namespace std;
#include"Tree.h"
int main()
{
	Tree T;
	T.insert(10);
	T.insert(20);
	T.insert(9);
	T.insert(10);
	T.insert(30);
	T.inorder();
	Tree t1(T);
	cout<<endl;
	t1.inorder();
	cout<<endl;
	T.deletenode(10);
	T.inorder();

	//T.insert(20);

}

