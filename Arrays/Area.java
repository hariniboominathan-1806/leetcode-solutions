import java.util.Scanner;
public class Area{
public int maximumArea(int[] height,int n){
    int i=0;
    int j=n-1;
    int maxArea=0;
    while(i<j){
        int min=Math.min(height[i],height[j]);
        int area=min*(j-i);
        maxArea=Math.max(maxArea,area);
        if(height[i]<height[j]){
            i++;
        }
        else{
            j--;
        }
    }
    return maxArea;
}
public static void main(String[] args){
    Scanner sc=new Scanner(System.in);
    int n=sc.nextInt();
    int height[]=new int[n];
    for(int i=0;i<n;i++){
        height[i]=sc.nextInt();
    }
    Area obj = new Area(); 
    System.out.println(obj.maximumArea(height, n));
    sc.close();
}
}