
Table of Contents
=================

   * [Why Java?](#why-java)
   * [The Challenges and Opportunities of Networks](#the-challenges-and-opportunities-of-networks)
   * [The Java Architecture](#the-java-architecture)
   * [Thanks](#thanks)


At the heart of Java technology lies the Java Virtual Machine--the abstract computer on which all Java programs run. Although the name ``"Java"`` is generally used to refer to the Java programming language,
there is more to Java than the language. **`The Java Virtual Machine, Java API, and Java class file work together with the Java language to make the Java phenomenon possible.`**


Here we show how the Java Virtual Machine fits into the big picture, show how the virtual machine relates to the other components of Javaís architecture: the class file, API, and language. They describe the motivation behind--and the implications of--the overall design of Java technology.


This chapter gives an introduction to Java as a technology. It gives an overview of Javaís architecture, discusses why Java is important, and looks at Javaís pros and cons.

# Why Java?



# The Challenges and Opportunities of Networks
 - platform-independent programs
 - Security
 - Robustness

# The Java Architecture
Java's architecture arises out of four distinct but interrelated technologies:

* the Java programming language
* the Java class file format
* the Java Application Programming Interface
* the Java virtual machine


>When you write and run a Java program, you are tapping the power of these four technologies. 

You express the program in source files written in the _**Java programming language**_, compile the source to _**Java class**_ files, and run the class files on a _**Java virtual machine**_. When you write your program, you access system resources (such as I/O, for example) by calling methods in the classes that implement the _**Java Application Programming Interface**_, or Java API. 

As your program runs, it fulfills your program's Java API calls by invoking methods in class files that implement the Java API. You can see the relationship between these four parts in Figure 1-1.


# Thanks
**`Inside-Java-Virtual-Machine`** by **`Bill Venners`**