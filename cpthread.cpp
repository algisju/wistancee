#include <vcl.h>
#include <windows.h>
#include <iostream>
#include <chrono>
#include <System.Threading.hpp> // parallel library
 
#pragma hdrstop
#pragma argsused
 
double calculate(int I)
{
 double t=0;
 for(int i=1; i<100000; i++)
 {
 for(int j=1; j<10000; j++)
 {
 t+=(I+j)/i;
 }
 }
 std::cout << I << ",";
 
 return t;
}
 
 
int _tmain(int argc, _TCHAR* argv[])
{
 
 TParallel::For(0, 32, TProc1<int>([](int I)
 {
 calculate(I);
 }));
 
 Sleep(5000);
 std::cout << "done";
 getchar();
 
 return 0;
}
