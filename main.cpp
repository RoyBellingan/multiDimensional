#include <iostream>
#include <any>
using namespace std;

template<typename T>
bool swap(T& dest, const std::any& source){
	if(source.type() == typeid(dest)){
		dest = any_cast<T>(source);
		return true;
	}else{
		return false;
	}
}
int main0() {
	 
	any x = 3;
	uint y;
	swap(y,x);
	auto c = any_cast<uint>(x);
	cout << "Hello World!" << endl;
	return 0;
}
