import java.util.*;
class twoSum {
    public int[] sum(int[] nums, int target) {
        int n=nums.length;
        int a[]=new int[2];
      for(int i=0;i<n;i++) {
          for(int j=i+1;j<n;j++){
              if(nums[i]+nums[j]==target){
                 a[0]=i;
                  a[1]=j;
                  return a;
              }
          }
      }
       return a;
    }
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        int nums[]=new int[n];
        for(int i=0;i<n;i++){
            nums[i]=sc.nextInt();
        }
        int target=sc.nextInt();
        twoSum obj=new twoSum();
        int result[]=obj.sum(nums,target);
        System.out.print(Arrays.toString(result));
        sc.close();
    }
}