

Table of Contents
=================

   * [Java Internals](#java-internals)
      * [Why Java?](#why-java)
      * [The Challenges and Opportunities of Networks](#the-challenges-and-opportunities-of-networks)
      * [The Java Architecture](#the-java-architecture)
         * [Java Platform](#java-platform)
         * [The Java Virtual Machine](#the-java-virtual-machine)
         * [Java Methods](#java-methods)
   * [Java Concepts](#java-concepts)
   * [Java Advanced](#java-advanced)
   * [Thanks](#thanks)

# Java Internals

At the heart of Java technology lies the Java Virtual Machine--the abstract computer on which all Java programs run. Although the name ``"Java"`` is generally used to refer to the Java programming language,
there is more to Java than the language. **`The Java Virtual Machine, Java API, and Java class file work together with the Java language to make the Java phenomenon possible.`**



Here we show how the Java Virtual Machine fits into the big picture, show how the virtual machine relates to the other components of Java's architecture: the class file, API, and language. They describe the motivation behind--and the implications of--the overall design of Java technology.


<br>

<p align="center">
  <img width="450" height="350" src="/Java/ResourcesFiles/Pictures/JavaReadMe/JavaPhenomenon.png?raw=true" alt="The Java programming Phenomenon">
</p>

<br>

This chapter gives an introduction to Java as a technology. It gives an overview of Java's architecture, discusses why Java is important, and looks at Java's pros and cons.



## Why Java?



## The Challenges and Opportunities of Networks
 - platform-independent programs
 - Security
 - Robustness

## The Java Architecture
Java's architecture arises out of four distinct but interrelated technologies:

* the Java programming language
* the Java class file format
* the Java Application Programming Interface
* the Java virtual machine


>When you write and run a Java program, you are tapping the power of these four technologies. 

You express the program in source files written in the _**Java programming language**_, compile the source to _**Java class**_ files, and run the class files on a _**Java virtual machine**_. When you write your program, you access system resources (such as I/O, for example) by calling methods in the classes that implement the _**Java Application Programming Interface**_, or Java API. 

As your program runs, it fulfills your program's Java API calls by invoking methods in class files that implement the Java API. You can see the relationship between these four parts in Figure 

<br>

<p align="center">
  <img width="750" height="350" src="/Java/ResourcesFiles/Pictures/The_Java_programming_env.jpg?raw=true" alt="The Java programming environment">
</p>

<br>

### Java Platform
Together, `the Java virtual machine and Java API form a "platform" for which all Java programs are compiled`. In addition to being called the Java runtime system, the combination of the Java virtual machine and Java API is called the Java Platform (or, starting with version 1.2, the Java 2 Platform). Java programs can run on many different kinds of computers because the Java Platform can itself be implemented in software. As you can see in Figure 1- 2, 
> a Java program can run anywhere the **Java Platform** is present.


<br>

<p align="center">
  <img width="700" height="250" src="/Java/ResourcesFiles/Pictures/JavaReadMe/Java_programs_run_on_top_of_the_Java_Platform.jpg?raw=true" alt="Java programs run on top of the Java Platform">
</p>

<br>

### The Java Virtual Machine

The Java virtual machine is an abstract computer. `Its specification defines certain features every Java virtual machine must have, but leaves many choices to the designers of each implementation.` 

> Implementations Example :  Oracle HotSpot, IBM J9 , SAP JVM etc..

The flexible nature of the Java virtual machine's specification enables it to be implemented on a wide variety of computers and devices.



A Java virtual machine's main job is to load class files and execute the bytecodes they contain. As you can see in Figure 1-3, the Java virtual machine contains a class loader, which loads class files from both the program and the Java API. Only those class files from the Java API that are actually needed by a running program are loaded into the virtual machine. The bytecodes are executed in an execution engine.



<br>

<p align="center">
  <img width="600" height="250" src="/Java/ResourcesFiles/Pictures/JavaReadMe/JVM_Block_Diagram.jpg?raw=true" alt="A basic block diagram of the Java virtual machine">
</p>

<br>

### Java Methods
When running on a Java virtual machine that is implemented in software on top of a host operating system, a Java program interacts with the host by invoking native methods. 

In Java, there are two kinds of methods: 
 - **Java** : A Java method is written in the Java language, compiled to bytecodes, and stored in class files. 
 - **Native** : A native method is written in some other language, such as C, C++, or assembly, and compiled to the native machine code of a particular processor. 


Native methods are stored in a dynamically linked library whose exact form is platform specific. While Java methods are platform independent, native methods are not. When a running Java program calls a native method, the virtual machine loads the dynamic library that contains the native method and invokes it. As you can see in below Figure, native methods are the connection between a Java program and an underlying host operating system.


<br>

<p align="center">
  <img width="600" height="400" src="/Java/ResourcesFiles/Pictures/JavaReadMe/JVM_Block_Diagram_2.jpg?raw=true" alt="A Java virtual machine implemented in software on top of a host operating system.">
</p>

<br>


You can use native methods to give your Java programs direct access to the resources of the underlying operating system. 

One native method interface--the Java Native Interface, or JNI--enables native methods to work with any Java Platform implementation on a particular host computer. Vendors of the Java Platform, however, are not necessarily required to support JNI. They may provide their own proprietary native method interfaces in addition to (or depending on their contract, in place of) JNI.

Java gives you a choice. If you want to access resources of a particular host that are unavailable through the Java API, you can write a platform-specific Java program that calls native methods. If you want to keep your program platform independent, **```however, you must access the system resources of the underlying operating system only through the Java API```**.

#  [Java Concepts](./2.JavaConcepts/ReadMe.md)

#  [Java Advanced](./3.JavaAdvanced/README.md)



# Thanks
**`Inside-Java-Virtual-Machine`** by **`Bill Venners`**