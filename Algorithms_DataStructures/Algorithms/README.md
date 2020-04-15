- [a. Characteristics of an Algorithm](#a-characteristics-of-an-algorithm)
- [b. How to Write an Algorithm?](#b-how-to-write-an-algorithm)
- [c. Algorithm Analysis](#c-algorithm-analysis)
- [d. Algorithm Complexity](#d-algorithm-complexity)
  - [i. Space Complexity](#i-space-complexity)
  - [ii. Time Complexity](#ii-time-complexity)
- [List Of Algorithms](#list-of-algorithms)
  - [Types oF Algorithms](#types-of-algorithms)

**Algorithm** is a step-by-step procedure, which defines a set of instructions to be executed in a certain order to get the desired output. Algorithms are generally created independent of underlying languages, i.e. an algorithm can be implemented in more than one programming language.

From the data structure point of view, following are some important categories of algorithms −

- **Sort** − Algorithm to sort items in a certain order.
- **Search** − Algorithm to search an item in a data structure.

* **Insert** − Algorithm to insert item in a data structure.

* **Update** − Algorithm to update an existing item in a data structure.

* **Delete** − Algorithm to delete an existing item from a data structure.

## a. Characteristics of an Algorithm

`Not all procedures can be called an algorithm`. An algorithm should have the following characteristics −

- **Unambiguous** − Algorithm should be clear and unambiguous. Each of its steps (or phases), and their inputs/outputs should be clear and must lead to only one meaning.

- **Input** − An algorithm should have 0 or more well-defined inputs.

- **Output** − An algorithm should have 1 or more well-defined outputs, and should match the desired output.

- **Finiteness** − Algorithms must terminate after a finite number of steps.

- **Feasibility** − Should be feasible with the available resources.

- **Independent** − An algorithm should have step-by-step directions, which should be independent of any programming code.

## b. How to Write an Algorithm?

There are no well-defined standards for writing algorithms. Rather, it is problem and resource dependent. Algorithms are never written to support a particular programming code.

As we know that all programming languages share basic code constructs like loops (do, for, while), flow-control (if-else), etc. These common constructs can be used to write an algorithm.

We write algorithms in a step-by-step manner, but it is not always the case. Algorithm writing is a process and is executed after the problem domain is well-defined. That is, we should know the problem domain, for which we are designing a solution.

Example
Let's try to learn algorithm-writing by using an example.

**Problem** − Design an algorithm to add two numbers and display the result.

```
Step 1 − START
Step 2 − declare three integers a, b & c
Step 3 − define values of a & b
Step 4 − add values of a & b
Step 5 − store output of step 4 to c
Step 6 − print c
Step 7 − STOP
```

Algorithms tell the programmers how to code the program. Alternatively, the algorithm can be written as −

```
Step 1 − START ADD
Step 2 − get values of a & b
Step 3 − c ← a + b
Step 4 − display c
Step 5 − STOP
```

In design and analysis of algorithms, usually the second method is used to describe an algorithm. It makes it easy for the analyst to analyze the algorithm ignoring all unwanted definitions. He can observe what operations are being used and how the process is flowing.

Writing **step numbers**, is optional.

We design an algorithm to get a solution of a given problem. A problem can be solved in more than one ways.

<p align="center">
  <img width="400" height="400" src="../../PlayGround/ResourcesFiles/Algorithms_DataStructures/sorting/Algorithm_solutions_.png" alt="Algorithm_solutions">
</p>

Hence, many solution algorithms can be derived for a given problem. The next step is to **analyze** those proposed solution algorithms and implement the best suitable solution.

## c. Algorithm Analysis

Efficiency of an algorithm can be analyzed at two different stages, before implementation and after implementation. They are the following −

- **A Priori Analysis** − This is a theoretical analysis of an algorithm. Efficiency of an algorithm is measured by assuming that all other factors, for example, processor speed, are constant and have no effect on the implementation.

- **A Posterior Analysis** − This is an empirical analysis of an algorithm. The selected algorithm is implemented using programming language. This is then executed on target computer machine. In this analysis, actual statistics like running time and space required, are collected.

We shall learn about a `priori algorithm` analysis. Algorithm analysis deals with the execution or running time of various operations involved. The running time of an operation can be defined as the number of computer instructions executed per operation.

## d. Algorithm Complexity

Suppose **X** is an algorithm and **n** is the size of input data, the time and space used by the algorithm X are the two main factors, which decide the efficiency of X.

- **Time Factor** − Time is measured by counting the number of key operations such as comparisons in the sorting algorithm.

- **Space Factor** − Space is measured by counting the maximum memory space required by the algorithm.

The complexity of an algorithm **f(n)** gives the running time and/or the storage space required by the algorithm in terms of **n** as the size of input data.

### i. Space Complexity

Space complexity of an algorithm represents the amount of memory space required by the algorithm in its life cycle. The space required by an algorithm is equal to the sum of the following two components −

- A fixed part that is a space required to store certain data and variables, that are independent of the size of the problem. For example, simple variables and constants used, program size, etc.

- A variable part is a space required by variables, whose size depends on the size of the problem. For example, dynamic memory allocation, recursion stack space, etc.

Space complexity S(P) of any algorithm P is `S(P) = C + SP(I)`, where C is the fixed part and S(I) is the variable part of the algorithm, which depends on instance characteristic I. Following is a simple example that tries to explain the concept −

```
Algorithm: SUM(A, B)

Step 1 -  START
Step 2 -  C ← A + B + 10
Step 3 -  Stop
```

Here we have three variables A, B, and C and one constant. Hence S(P) = 1 + 3. Now, space depends on data types of given variables and constant types and it will be multiplied accordingly.

### ii. Time Complexity

Time complexity of an algorithm represents the amount of time required by the algorithm to run to completion. Time requirements can be defined as a numerical function **T(n)**, where T(n) can be measured as the number of steps, provided each step consumes constant time.

For example, addition of two n-bit integers takes n steps. Consequently, the total computational time is T(n) = c ∗ n, where c is the time taken for the addition of two bits. Here, we observe that T(n) grows linearly as the input size increases.

## List Of Algorithms

### Types oF Algorithms

`B` - Beginner, `A` - Advanced

**----> TO-DO** : [1](https://www.includehelp.com/algorithms/), [2](https://www.includehelp.com/data-structure-tutorial/algorithm-and-its-types.aspx)

Well there are many types of algorithm but the most fundamental types of algorithm are:

- [Sorting Algorithms](./SortingAlgorithms/README.md)
- Searching Algorithms
- Dynamic programming algorithm
- Graph Algorithms
- Backtracking Algorithms
- Recursive algorithms
- Divide and conquer algorithm
- Greedy algorithm
- Algorithms Implementation
- Brute Force algorithm
- Randomized algorithm
- Operating system algorithms

|       |   Topic    | ReadMe | Complexity |
| :---: | :--------: | :----: | :--------: |
|  [ ]  | Algorithms |  link  |    `B`     |

**<sup>[[1]](https://www.geeksforgeeks.org/fundamentals-of-algorithms/)</sup>** **<sup>[[2]](https://www.includehelp.com/data-structure-tutorial/algorithm-and-its-types.aspx)</sup>**

- **Sorting**

* [x] `B` [Selection Sort](./Algorithms/SelectionSort/SelectionSort.md)
  - [ ] [Mobile Numeric Keypad Problem](https://www.geeksforgeeks.org/mobile-numeric-keypad-problem/) or [Old keypad in a foreign land](https://www.hackerearth.com/practice/algorithms/sorting/selection-sort/practice-problems/algorithm/old-keypad-in-a-foreign-land-24/)
  - [ ] [Selection Sort](https://practice.geeksforgeeks.org/problems/selection-sort/1)

|  Sorting  |      Best case       |      Worst case      |     Average case     | Stable |  Method   |
| :-------: | :------------------: | :------------------: | :------------------: | :----: | :-------: |
| Selection | **O(N<sup>2</sup>)** | **O(N<sup>2</sup>)** | **O(N<sup>2</sup>)** |   No   | Selection |
|           |                      |                      |                      |        |
|           |                      |                      |                      |        |

<p align="center">
  <img width="700" height="350" src="../../PlayGround/ResourcesFiles/Algorithms_DataStructures/sorting/AllAlgorithms_.gif" alt="AllAlgorithms">
</p>
