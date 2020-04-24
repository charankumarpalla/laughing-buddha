// // ###############################################################################
// //  -------->>>>>> 1. Basic Bubble sort
// //  -------->>>>>> Notice : Irrespective it always loops for array.length times each time
// // Before Sorting [ 5, 1, 6, 2, 4, 3 ]
// // Key to Insert:1         Array to check : [5]
// // After One Loop Pass : [ 1, 5, 6, 2, 4, 3 ]
// // Key to Insert:6         Array to check : [1,5]
// // After One Loop Pass : [ 1, 5, 6, 2, 4, 3 ]
// // Key to Insert:2         Array to check : [1,5,6]
// // After One Loop Pass : [ 1, 2, 5, 6, 4, 3 ]
// // Key to Insert:4         Array to check : [1,2,5,6]
// // After One Loop Pass : [ 1, 2, 4, 5, 6, 3 ]
// // Key to Insert:3         Array to check : [1,2,4,5,6]
// // After One Loop Pass : [ 1, 2, 3, 4, 5, 6 ]
// // After Sorting [ 1, 2, 3, 4, 5, 6 ]
// // Total LOOPs: 8

var loops = 0;
function InsertionSort(a) {
  for (let i = 1; i < a.length; i++) {
    var key = a[i];
    let j = i - 1;
    console.log(
      "\nKey to Insert:" +
        key +
        "\t\tArray to check : [" +
        a.slice(0, j + 1) +
        "]"
    );
    for (j; j >= 0 && a[j] > key; j--) {
      a[j + 1] = a[j];
      loops++;
      //   console.log(a[(0, 0, 2)]);
    }
    a[j + 1] = key;
    console.log("After One Loop Pass :", a);
  }
}

// a = [5, 1, 6, 2, 4, 3];
a = [1, 2, 3, 4, 5, 6];

console.log("\nBefore Sorting", a);
InsertionSort(a);
console.log("\nAfter Sorting", a);
console.log("\nTotal LOOPs :", loops);
