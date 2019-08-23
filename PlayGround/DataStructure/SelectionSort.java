
public class SelectionSort {

    public void printArray(int arr[]){
        for(int i=0;i<arr.length;i++){
            System.out.println(arr[i]);

        }
    }

    public static void main(String[] args) {
        SelectionSort ss = new SelectionSort();
        int arr[] = { 10, 5, 13, 8, 7, 3 };

        System.out.println("Before Sorting : "+ss.printArray(arr));

    }
}