#include <Rcpp.h>
#include<stdio.h>
using namespace Rcpp;

// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//

// [[Rcpp::export]]
void BubbleSort(){
  int v[]={61,30,21,9,22,11,31,4,18,31,86,14,32,56};
  int n=14;
  for(int i=0;i<n;i++){
    printf("%d ",v[i]);
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
        printf("%d ",v[i]);
}


// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
BubbleSort()
*/
