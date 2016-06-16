#include <iostream>

int main(void){
    int i;
    while (true){
        std::cin >> i;
        if (i==-1){
            break;
        }
        int total = 0;
        int speed;
        int hours = 0;
        int hours_input; 
        for (int j=0;j<i;j++){
            std::cin >> speed >> hours_input;
            total += speed*(hours_input-hours);
            hours = hours_input;            
        }
        std::cout << total << " miles" << std::endl;
    }
}