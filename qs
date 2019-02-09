#include<iostream>
using namespace std;

int partition(int a[],int l, int h)
{    int temp;
    int pi=0;
    int pivot=a[h];
    for(int i=0; i<h;){
    if(a[i]<=pivot){
   	 
   	 temp=a[i];
   	 a[i]=a[pi];
   	 a[pi]=temp;
   	 i++;
   	 pi++;
    cout << "a[i]: " << a[i] <<" i ->" << i << endl;
   	 }
    else
   	 i++;
    
   	 }
   	 temp=a[pi];
   	 a[pi]=a[h];
   	 a[h]=temp;
    
return pi;
}

   	 



int qs(int a[], int l, int h){

    if(l<h){
    
    int x=partition(a,l,h);
    cout<<"pivot index:"<<x<<endl;
    
    qs(a,l,x-1);
    qs(a,x+1,h);
    }


}








int main(){
int a[10]={1,4,3,5,6,9,22,11,12,8};
int x;


for(int i=0; i<10; i++){
cout<<a[i];
}
cout<<endl;


