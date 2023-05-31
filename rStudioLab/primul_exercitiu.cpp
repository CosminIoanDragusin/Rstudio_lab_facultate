#include <Rcpp.h>
#include<stdio.h>
using namespace Rcpp;
// [[Rccp::export]]
void BubbleSort(){
  int v[]={61,30,21,9,22,11,31,4,18,31,86,14,32,56};
  int n=14;
  for(int i=0;i<n;i++){
    printf("%d",v[i]);
  }
  int i,j;
  for(int i=0;i<n-1;i++)
    for(int j=0;j<n-i-1;j++)
      if(v[j]>v[j+1])
      {
        int t = v[j];
        v[j] = v[j+1];
        v[j+1] = t;
      }
      printf("\n Vectorul sortat este:");
      for(int i=0;i<n;i++)
        printf("%d",v[i]);
}
/**** R
BubbleSort()
*/



