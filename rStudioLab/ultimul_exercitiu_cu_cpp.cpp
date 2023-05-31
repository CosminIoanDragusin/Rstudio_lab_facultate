#include<iostream>
#include<math.h>
#include<stdio.h>
#include<fstream>
//using namespace Rcpp;

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
void scriereFisier() {
  int a = 3, b = 10;
  long double x[10000];
  long double y[10000];
  int ba, b2a;
  x[0] = 983456;
  
  ba = pow(b, a);
  b2a = pow(b, 2 * a);
  
  for (int k = 0; k < 10000 - 1; k++) {
    x[k + 1] = pow(x[k], 2)/ba;
    x[k + 1] = floor(x[k + 1]);
    x[k + 1] = fmod(x[k + 1], b2a);
  }
  
  for (int i = 0; i < 10000; i++) {
    y[i] = x[i] * pow(10, -6);
  }
  
  std::ofstream myfile;
  myfile.open("numere.txt");
  
  for (int j = 0; j < 10000; j++) {
    myfile << std::fixed << y[j] << "\n";
  }
  
  myfile.close();
}


// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
scriereFisier()
*/
