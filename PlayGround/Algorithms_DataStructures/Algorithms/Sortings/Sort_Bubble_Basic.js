// // ###############################################################################
// //  -------->>>>>> 1. Basic Bubble sort
// //  -------->>>>>> Notice : Irrespective it always loops for array.length times each time
// // Before Sorting [ 5, 1, 6, 2, 4, 3 ]
// // [ 5, 1, 6, 2, 4, 3 ] 5 1
// // [ 1, 5, 6, 2, 4, 3 ] 5 6
// // [ 1, 5, 6, 2, 4, 3 ] 6 2
// // [ 1, 5, 2, 6, 4, 3 ] 6 4
// // [ 1, 5, 2, 4, 6, 3 ] 6 3

// // --- + One More FOR Loop Done
// // [ 1, 5, 2, 4, 3, 6 ] 1 5
// // [ 1, 5, 2, 4, 3, 6 ] 5 2
// // [ 1, 2, 5, 4, 3, 6 ] 5 4
// // [ 1, 2, 4, 5, 3, 6 ] 5 3
// // [ 1, 2, 4, 3, 5, 6 ] 5 6

// // --- + One More FOR Loop Done
// // [ 1, 2, 4, 3, 5, 6 ] 1 2
// // [ 1, 2, 4, 3, 5, 6 ] 2 4
// // [ 1, 2, 4, 3, 5, 6 ] 4 3
// // [ 1, 2, 3, 4, 5, 6 ] 4 5
// // [ 1, 2, 3, 4, 5, 6 ] 5 6

// // --- + One More FOR Loop Done   // No Swap But we Still Loop
// // [ 1, 2, 3, 4, 5, 6 ] 1 2
// // [ 1, 2, 3, 4, 5, 6 ] 2 3
// // [ 1, 2, 3, 4, 5, 6 ] 3 4
// // [ 1, 2, 3, 4, 5, 6 ] 4 5
// // [ 1, 2, 3, 4, 5, 6 ] 5 6

// // --- + One More FOR Loop Done   // No Swap But we Still Loop
// // [ 1, 2, 3, 4, 5, 6 ] 1 2
// // [ 1, 2, 3, 4, 5, 6 ] 2 3
// // [ 1, 2, 3, 4, 5, 6 ] 3 4
// // [ 1, 2, 3, 4, 5, 6 ] 4 5
// // [ 1, 2, 3, 4, 5, 6 ] 5 6

// // --- + One More FOR Loop Done
// // After Sorting [ 1, 2, 3, 4, 5, 6 ]

// function BubbleSort(a) {
//   for (let i = 0; i < a.length - 1; i++) {
//     for (let j = 0; j < a.length - 1; j++) {
//       console.log(a, a[j], a[j + 1]); // SOMETIMES Comapring with undefined
//       if (a[j] > a[j + 1]) {
//         a[j] = a[j] * a[j + 1];
//         a[j + 1] = a[j] / a[j + 1];
//         a[j] = a[j] / a[j + 1];
//       }
//     }
//     console.log("\n--- + One More FOR Loop Done ");
//   }
// }

// a = [5, 1, 6, 2, 4, 3];

// console.log("Before Sorting", a);
// BubbleSort(a);
// console.log("After Sorting", a);

// // ###############################################################################
// //  -------->>>>>> 2.  Bubble sort with no 'undefined comparisions'
// //  -------->>>>>> Notice :  We Dont Do unwanted inner for loop as already Biggest number bubbled and we descreas the comparision
// // Before Sorting [ 5, 1, 6, 2, 4, 3 ]
// // [ 5, 1, 6, 2, 4, 3 ] 5 1
// // [ 1, 5, 6, 2, 4, 3 ] 5 6
// // [ 1, 5, 6, 2, 4, 3 ] 6 2
// // [ 1, 5, 2, 6, 4, 3 ] 6 4
// // [ 1, 5, 2, 4, 6, 3 ] 6 3

// // --- + One More FOR Loop Done
// // [ 1, 5, 2, 4, 3, 6 ] 1 5
// // [ 1, 5, 2, 4, 3, 6 ] 5 2
// // [ 1, 2, 5, 4, 3, 6 ] 5 4
// // [ 1, 2, 4, 5, 3, 6 ] 5 3

// // --- + One More FOR Loop Done
// // [ 1, 2, 4, 3, 5, 6 ] 1 2
// // [ 1, 2, 4, 3, 5, 6 ] 2 4
// // [ 1, 2, 4, 3, 5, 6 ] 4 3

// // --- + One More FOR Loop Done
// // [ 1, 2, 3, 4, 5, 6 ] 1 2
// // [ 1, 2, 3, 4, 5, 6 ] 2 3

// // --- + One More FOR Loop Done
// // [ 1, 2, 3, 4, 5, 6 ] 1 2

// // --- + One More FOR Loop Done

// // --- + One More FOR Loop Done
// // After Sorting [ 1, 2, 3, 4, 5, 6 ]
// function BubbleSort2(a) {
//   for (let i = a.length; i > 0; i--) {
//     for (let j = 0; j < i - 1; j++) {
//       console.log(a, a[j], a[j + 1]);
//       if (a[j] > a[j + 1]) {
//         a[j] = a[j] * a[j + 1];
//         a[j + 1] = a[j] / a[j + 1];
//         a[j] = a[j] / a[j + 1];
//       }
//     }
//     console.log("\n--- + One More FOR Loop Done ");
//   }
// }

// // a = [5, 1, 6, 2, 4, 3];

// a = [1, 2, 3, 4, 5, 6];

// console.log("Before Sorting", a);
// BubbleSort2(a);
// console.log("After Sorting", a);

// ###############################################################################
//  -------->>>>>> 3.  Bubble sort with OPTIMIZATION i.e with FLag
//  -------->>>>>> Notice :  We Dont Do unwanted inner for loop as already the array is sorted

function BubbleSort3(a) {
  for (let i = a.length; i > 0; i--) {
    swap = false;
    for (let j = 0; j < i - 1; j++) {
      console.log(a, a[j], a[j + 1]);
      if (a[j] > a[j + 1]) {
        [a[j], a[j + 1]] = [a[j + 1], a[j]];
        swap = true;
      } // SWAP ARRAY ELEMENTS
    }

    if (!swap) {
      console.log("Array Already Sorted So No More Loops");
      break;
    }
    console.log("\n--- + One PASS Done ");
  }
}

// a = [5, 1, 6, 2, 4, 3];

a = [2, 1, 3, 4, 5, 6];

console.log("Before Sorting", a);
BubbleSort3(a);
console.log("After Sorting", a);
