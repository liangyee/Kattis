#include <iostream>

int main(void){
    long int jack,jill;
    std::cin >> jack >> jill;
    do{
    long int cd[jack];

    for (long int i=0;i < jack;i++){
        std::cin >> cd[i];
    }
    int cd_id,b=0;
    int index = 0;
    for (long int i=0;i < jill;i++){
        std::cin >> cd_id;
        while (index<jack&&cd[index]<=cd_id){
            if (cd[index]==cd_id){
               b++;
            }
            index++;
        }
    }
    std::cout << b << std::endl;;
    std::cin >> jack >> jill;
    }while(jack != 0 || jill != 0);

}