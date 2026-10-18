import java.util.Arrays;
import java.util.Scanner;
public class contains_duplicates {
    public Boolean duplicate(int[] nums,int n){
        Arrays.sort(nums);
        for(int i=1;i<n;i++){
            if(nums[i]==nums[i-1]){
                return true;
            }
        }
        return false;
        
    }
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        int[] nums=new int[n];
        for(int i=0;i<n;i++){
            nums[i]=sc.nextInt();
        }
        contains_duplicates obj=new contains_duplicates(); 
        System.out.print(obj.duplicate(nums,n));
        sc.close();
    }
    
}
