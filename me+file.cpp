#include <iostream>
#include <fstream>

using namespace std;

int main() {
	int i;
	ofstream ourfile;
	ourfile.open("mecpptext.txt");
	for(i=0; i<10; i++) {
		ourfile << "Yi-HAAAA!!" <<i <<"\n";
	}
	ourfile.close();
	return 0;


}
