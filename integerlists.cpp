#include <iostream>
#include <cstring>

int main(void){
    int loop;
    std::cin >> loop;
    for (int i = 0;i < loop;i++){
        char commands[100100];
        std::cin >> commands;
        int total;
        std::cin >> total;
        int numbers[total];
        char character;
        std::cin >> character;
        for (int j = 0;j < total;j++){
            std::cin >> numbers[j] >> character;
        }
        if (total == 0){
            std::cin >> character;
        }    
        int order = 1;
        int start=0,end=total-1;    
        for (int j = 0;j < strlen(commands);j++){
            if (commands[j] == 'R'){
                order *= -1;
            }
            else{
                if (order>0){
                    start++;
                }
                else{
                    end--;
                }        
            }           
        }
        if (start>=end+2){
            std::cout << "error";
        } 
        else{
            std::cout << "[";
            if (start - 1 == end){
                std::cout << "]";
            }    
            else if (start == end){
                std::cout << numbers[start] << "]";
            }
            else{   
                int j;
                if (order > 0){
                    for (j = start;j < end;j++){
                        std::cout << numbers[j] << ",";
                    }
                    std::cout << numbers[end] << "]";
                }
                else{
                    for (j = end;j > start;j--){
                        std::cout << numbers[j] << ",";
                    }
                    std::cout << numbers[start] << "]";
                } 
            }    
        }
        if (i < loop -1){
            std::cout << std::endl;
        }                  
    }  
}
