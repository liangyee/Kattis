import java.util.HashMap;
import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        @SuppressWarnings("resource")
        Scanner input = new Scanner(System.in);
        int subs = input.nextInt();
        input.nextLine();
        HashMap<String,Integer> comments = new HashMap<String,Integer>();
        for (int i=0;i<subs;i++){
            String comment = input.nextLine();
            if (comments.containsKey(comment)){
                comments.replace(comment, comments.get(comment)+1);
            }
            else{
                comments.put(comment,1);
            }
        }
        int count = 0;
        for (int i=0;i<subs;i++){
            String comment = input.nextLine();
            if (comments.containsKey(comment)&&comments.get(comment)>0){
                comments.replace(comment, comments.get(comment)-1);
                count++;
            } 
        }
        System.out.println(count);
        
    }
}