
Table of Contents
=================

   * [ClassLoader Subsystem](#classloader-subsystem)
      * [Loading](#loading)
      * [Linking](#linking)
      * [Initialization](#initialization)
   * [References](#references)


#   ClassLoader Subsystem

Class loaders are responsible for loading Java classes during runtime dynamically to the JVM (Java Virtual Machine). Also, they are part of the JRE (Java Runtime Environment). Hence, the JVM doesn't need to know about the underlying files or file systems in order to run Java programs thanks to class loaders.

Also, these Java classes aren't loaded into memory all at once, but when required by an application. This is where class loaders come into the picture. They are responsible for loading classes into memory.


<p align="center">
  <img width="600" height="350" src="../../../../PlayGround/ResourcesFiles/Java/Pictures/_LoaderSubSystems_ClassLoader_Internals.jpg" alt="ClassLoader internals">
</p>


This subsystem handles the dynamic class loading functionality and performs three major functions i.e.:

##  Loading
Loading means reading classes from hard disk and store corresponding binary data in method area. For each classes JVM will store
corresponding information in method area, such as
1. Fully qualied name of class 
2. Fully qualied name of immediate parent class
3. Methods info
4. Variable info
5. Constructor info
6. Modiers info
7. Constant pool info
8. whether .class le represents class or Interface or enum


After  loading .class le immediately jvm creates an object for that loaded class on the Heap memory of type java.lang.Class.

>🤔❓ **How many Class class object will be created in JVM?**
    For every loaded type, only one class Object will be created, even though we are using class multiple times in our program.  

Class class object can be used by programmer to get class level information like method info or variables info, constructor info etc.


<!-- This component handles the loading of the .class files from the hardware system into the JVM memory and stores the binary data (such as fully qualified class-name, immediate parent class-name, information about methods, variables, constructors etc.) in the method areas. For every loaded .class file, JVM immediately creates an object on the heap memory of type java.lang.class. Do remember, even though the developers call a class multiple time, only one class object will be created.  -->


<div align="right">

<a href="a.Loaders.md" alt=""><img src="https://img.shields.io/badge/ReadMore-blue?style=plastic&logo=markdown"/></a>

[**Continue Reading ......**](a.Loaders.md) 🔬
</div>


<a href="https://www.facebook.com/charanraj11" alt=""><img src="https://img.shields.io/badge/-lightblue?logo=Markdown"/></a>

##  Linking

This component performs the linking of a class or an interface. As this component involves the allocation of new data structures, it may throw the OutOfMemoryError and performs the three important activities:
-   **Verification**: It is a process of checking the binary representation of a class and validating whether the generated .class file is valid or not. This process is performed by the Bytecode verifier and if the generated .class file is not valid, a VerifyError is thrown
-   **Preparation**: It is a process of assigning the memory for the class level or interface level static variables and assigns the default values
-   **Resolution**: It is a process of changing the symbolic references with the original memory references from the method area

<div align="right">

[**Continue Reading ......**](b.Linkers.md) 🔬
</div>

##  Initialization
This component performs the final phase of the class loading where all the static variables are assigned the original values and the static blocks are executed from the parent to the child class. This process requires careful synchronization as JVM is multithreaded and some threads may try to initialize the same class or interface at the same time.

<div align="right">

[**Continue Reading ......**](c.Initialising.md) 🔬
</div>

#   References
- https://www.javacodegeeks.com/2018/04/jvm-architecture-jvm-class-loader-and-runtime-data-areas.html