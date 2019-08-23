
- [Selection Sort](#selection-sort)

# Selection Sort


Selection sort is a simple sorting algorithm. This sorting algorithm is an [`in-place comparison-based`](/PlayGround/Playground.md#swap-in-place-numbers) algorithm in which the list is divided into two parts, the sorted part at the left end and the unsorted part at the right end. Initially, the sorted part is empty and the unsorted part is the entire list.

1) The Left End which is already sorted.
2) The Right End which is unsorted.

The smallest element is selected from the unsorted array and swapped with the leftmost element, and that element becomes a part of the sorted array. This process continues moving unsorted array boundary by one element to the right.


In every iteration of selection sort, the minimum element (considering ascending order) from the unsorted End is picked and moved to the sorted End.


This algorithm is not suitable for large data sets as its average and worst case complexities are of Ο(n2), where n is the number of items.










- Visualizer - https://www.hackerearth.com/practice/algorithms/sorting/selection-sort/visualize/
