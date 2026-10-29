import java.util.*;
public class majority {
    public int majorityElement(int[] nums) {
        int n=nums.length;
        int m=0;
        int c=0;
        for(int i=0;i<n;i++){
            if(m==0){
                c=nums[i];
            }
            if(c==nums[i]){
                m++;
            }
            else{
                m--;
            }
        }
        return c;
    }

public static void main(String [] args){
    Scanner sc=new Scanner(System.in);
    int n=sc.nextInt();
    int nums[]=new int[n];
    for(int i=0;i<n;i++){
        nums[i]=sc.nextInt();
    }
majority obj=new majority();
System.out.print(obj.majorityElement(nums));
sc.close();
}
}
