

- [DataStructures_Algorithms](#datastructuresalgorithms)

# DataStructures_Algorithms


- [ ] https://github.com/rishabh115/Interview-Questions
- [ ] https://github.com/yangshun/tech-interview-handbook


<h2 id="StringSort">String Selection Sort </h2>

```

// Sort a String array using selection sort.
public static void sort(String[] a) {
  for (int i=0; i<a.length-1; i++) {
     for (int j=i+1; j<a.length; j++) {
        if (a[i].compareTo(a[j]) > 0) {
           String temp=a[j]; a[j]=a[i]; a[i]=temp;
        }
     }
  }
}

```

- https://www.geeksforgeeks.org/program-to-sort-an-array-of-strings-using-selection-sort/