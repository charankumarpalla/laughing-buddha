
public class SelectionSort {

    public void sort(int arr[]){
        System.out.println("Sorting Started...!!!");
        System.out.println(arr[i]+" < "+arr[j]);
        for(int i=0;i<arr.length;i++){
            for(int j=i+1;j<arr.length;j++){
                if(arr[i]>arr[j]){
                    System.out.println(+arr[i]+" < "+arr[j]);
                    arr[i]=arr[i]+arr[j];
                    arr[j]=arr[i]-arr[j];
                    arr[i]=arr[i]-arr[j];
                    System.out.println(+arr[i]+" < "+arr[j]);
                    continue;
                }
            }
        }
    }

    public void printArray(int arr[]){
        for(int i=0;i<arr.length;i++){
            System.out.println(arr[i]);
        }
    }

    public static void main(String[] args) {
        SelectionSort ss = new SelectionSort();
        // int arr[] = { 10, 5, 13, 8, 7, 3 ,1,15,9};
        int arr[]={10,8,99,7,1,5,88,9}
        // int arr[] = { 3,1,2};

        System.out.println("Before Sorting...!!!!");
        ss.printArray(arr);

        ss.sort(arr);


        System.out.println("After Sorting...!!!!");
        ss.printArray(arr);

        // System.out.println("Before Sorting : "+ss.printArray(arr));

        
    }
}