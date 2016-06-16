#include <iostream>
#include <math.h>

unsigned long long process(int start,int end){
    unsigned long long result = 1;
    for (int i = start;i < end;i++){
        //if (i==0){continue;}
        int j = i;
        while (j%10==0){j/=10;}
        result *= j;
        while (result%10==0){result/=10;}
        result %= 1000000000;
    }
    return result;
}    

int main(void){
    int input;
    std::cin >> input;
    unsigned long long result = 1;
    int key = 10000;
    int i=0;
    for(;(i+1)*key+1<input;i++){
        result *= process(i*key+1,(i+1)*key+1);
        result %= 1000000000;
    }
    result *= process(i*key+1,input+1);
    result %= 1000;
    if (input<=7){std::cout << result << std::endl;}
    else if (result<10){std::cout << "00" << result << std::endl;}
    else if (result<100){std::cout << "0" << result << std::endl;}
    else {std::cout << result << std::endl;}
}    