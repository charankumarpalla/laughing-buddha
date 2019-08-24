
- [Selection Sort](#selection-sort)
- [Time Complexity](#time-complexity)

# Selection Sort


Selection sort is a simple sorting algorithm. This sorting algorithm is an [`in-place comparison-based`](/PlayGround/Playground.md#swap-in-place-numbers) algorithm in which the list is divided into two parts, the sorted part at the left end and the unsorted part at the right end. Initially, the sorted part is empty and the unsorted part is the entire list.

1) The Left End which is already sorted.
2) The Right End which is unsorted.

The smallest element is selected from the unsorted array and swapped with the leftmost element, and that element becomes a part of the sorted array. This process continues moving unsorted array boundary by one element to the right.


In every iteration of selection sort, the minimum element (considering ascending order) from the unsorted End is picked and moved to the sorted End.


This algorithm is not suitable for large data sets as its average and worst case complexities are of Ο(n2), where n is the number of items.

<p align="center">
  <img width="600" height="300" src="../../ResourcesFiles/Images/SelectionSort.jpg" alt="Algorithm_solutions">
</p>


```

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
        int arr[] = {10,8,99,7,1,5,88,9};

        System.out.println("Before Sorting...!!!!");
        ss.printArray(arr);

        ss.sort(arr);

        System.out.println("After Sorting...!!!!");
        ss.printArray(arr);

        
    }
}
```


#   Time Complexity

To find the minimum element from the array of  `N` elements, `N-1` comparisons are required. After putting the minimum element in its proper position, the size of an unsorted array reduces to  `N-1` and then `N-2` comparisons are required to find the minimum in the unsorted array.

Therefore   `(N-1)` + `(N-2)` + . . .  + `1`  = `(N.(N-1)/2) comparisons and `N` swaps result in the overall complexity of **O(N<sup>2</sup>)**.





- Visualizer - https://www.hackerearth.com/practice/algorithms/sorting/selection-sort/visualize/
