

Table of Contents
=================

   * [<strong>Lets Jump into internals of Java</strong>,](#lets-jump-into-internals-of-java)
   * [<strong>1. JVM</strong> = Class loader system   runtime data area   Execution Engine.](#1-jvm--class-loader-system--runtime-data-area--execution-engine)
   * [<strong>JRE</strong> = JVM   libraries to run Java application.](#jre--jvm--libraries-to-run-java-application)
   * [<strong>JDK</strong> = JRE   Development/debugging tools](#jdk--jre--developmentdebugging-tools)
      * [Example jdk tools :](#example-jdk-tools-)
   * [<g-emoji class="g-emoji" alias="school_satchel" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f392.png">🎒</g-emoji> Extras](#school_satchel-extras)
      * [<g-emoji class="g-emoji" alias="ballot_box_with_check" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2611.png">☑️</g-emoji> Advanced Topics](#ballot_box_with_check-advanced-topics)
      * [<g-emoji class="g-emoji" alias="exclamation" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2757.png">❗️</g-emoji> Sometimes ignorance is not bliss](#exclamation-sometimes-ignorance-is-not-bliss)
      * [<g-emoji class="g-emoji" alias="link" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f517.png">🔗</g-emoji> <g-emoji class="g-emoji" alias="pray" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f64f.png">🙏</g-emoji> Reference and Our Thanks to these...](#link-pray-reference-and-our-thanks-to-these)
      * [<g-emoji class="g-emoji" alias="arrows_counterclockwise" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f504.png">🔄</g-emoji> UnWind/Recap](#arrows_counterclockwise-unwindrecap)
      * [<g-emoji class="g-emoji" alias="microscope" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f52c.png">🔬</g-emoji> More Images](#microscope-more-images)

      

# **Lets Jump into internals of Java**, 
let’s understand how a Java source file is executed.

<br>

<p align="center">
  <img width="600" height="400" src="../../PlayGround/ResourcesFiles/Java/Pictures/Java_Source_to_machinelevelcode.jpg?raw=true">
</p>

<br>

1.  We write the Java source code in Simple.Java file using an editor or IDE (integrated development environment) e.g. Eclipse or IntelliJ Idea.
2.  Program has to be compiled into bytecode. Java compiler (javac) compiles the sourcecode to Simple.class file.
3.  This class file can be executed in any platform/OS by JVM (Java virtual machine).
4.  JVM translates bytecode into native machine code which machines can execute.

<br>


<p align="center">
  <img width="600" height="200" src="../../PlayGround/ResourcesFiles/Java/Pictures/What-is-difference-between-JDK-JRE-and-JVM.jpg?raw=true" alt="LifeCycle of Java Program">
</p>

<br>

* A Java Program in its lifecycle right from source code -> bytecode -> Execution goes below phases

    * **JVM = Class loader system + runtime data area + Execution Engine.**
    * **JRE = JVM + libraries to run Java application.**
    * **JDK = JRE + tools to develop Java Application.**

<br>

> In layman terms: JDK is grandfather JRE is father and JVM is their son. [i.e. JDK > JRE > JVM ]

<br>

<p align="center">
  <img width="600" height="400" src="../../PlayGround/ResourcesFiles/Java/Pictures/JDK_JRE_JVM.jpg?raw=true" alt="JDK_JRE_JVM">
</p>


<br>


# **1. JVM** = Class loader system + runtime data area + Execution Engine.


Every developer who uses Java knows that Java bytecode runs in a JRE (Java `Runtime Environment` <sup>[3]()</sup> ). The most important element of the JRE is Java Virtual Machine (JVM), which analyzes and executes Java byte code. Java developers do not need to know how JVM works. So many great applications and libraries have already been developed without developers understanding JVM deeply. However, if you understand JVM, you will understand Java more, and will be able to solve the problems which seem to be so simple but unsolvable.

The JRE is composed of the Java API and the JVM. **`The role of the JVM is to read the Java application through the Class Loader and execute it along with the Java API`**.

> Java application programming interface (API) is a list of all classes that are part of the Java development kit (JDK). It includes all Java packages, classes, and interfaces, along with their methods, fields, and constructors. These prewritten classes provide a tremendous amount of functionality to a programmer.




<div align="right">

[**Continue Reading ......**](a.JVM/ReadMe.md) 🔬
</div>


# **JRE** = JVM + libraries to run Java application.


> In simple words JRE = JVM + rt.jar
   where rt.jar contains lang, util, awt, swing, math etc. libraries or compiled .class files used to run our program.
   
>JRE is the box and JVM is the content of the box.

A software program needs to execute, and to do that it needs an environment to run in. The runtime environment loads class files and ensures there is access to memory and other system resources to run them. In the past, most software used the operating system (OS) as its runtime environment. The program ran inside whatever computer it was on, but relied on operating system settings for resource access. Resources in this case would be things like memory and program files and dependencies. The Java Runtime Environment changed all that, at least for Java programs.




**What Does the JRE Comprise Of?**
JRE comprises the accompanying segments.

- **Java Virtual Machine (JVM)**, including Java HotSpot Client and Server Virtual Machines.
- Deployment Techniques – It includes arrangement, Java Web Start, and Java Plug-in.
- UI toolkits – User Interface including Abstract Window Toolkit (AWT), Swing, Java 2D, Accessibility, Image I/O, Print Service, Sound, intuitive (DnD), and information techniques.
- Integration libraries – It includes Interface Definition Language (IDL), Java Database Connectivity (JDBC, Remote Method Invocation (RMI), Remote Method Invocation over Internet Inter-Orb Protocol (RMI-IIOP) ), Java Naming and Directory Interface (JNDI), and scripting.
- Other base libraries, including worldwide help, input/yield (I/O), expansion instrument, Beans, Java Management Extensions (JMX), Java Native Interface (JNI), Math, Networking, Override Mechanism, Security, Serialization, and Java for XML Processing (XML JAXP).
- Lang and util base libraries – It includes lang and util, administration, forming, zip, instrument, reflection, Collections, Concurrency Utilities, Java Archive (JAR), Logging, Preferences API, Ref Objects, and Regular Expressions.


<div align="right">

[**Continue Reading ......**](b.JRE/ReadMe.md)  🔬</t> 
</div>

<br>


# **JDK** = JRE + Development/debugging tools

- It is a bundle of software that you can use to develop Java based applications.
- Java Development Kit is needed for developing java applications.provides tools for 
    -  develop
    -  compile
    -  debug
    -  run a program
- The JDK needs more Disk space as it contains the JRE along with various development tools.


The JDK is the Java Development Kit, the full-featured SDK for Java. It has everything the JRE has, **but also** the compiler (javac) and tools (like javadoc and jdb). It is **capable of creating and compiling programs**.

Usually, if you only care about running Java programs on computer you will only install the JRE. It's all you need. On the other hand, if you are planning to do some Java programming, you need to install the JDK instead.

Sometimes, even if you are not planning to do any Java development on a computer, you still need the JDK installed. For example, if you are deploying a web application with JSP, you are technically just running Java programs inside the application server. Why would you need the JDK then? Because the application server will convert JSP into Java servlets and needs to use the JDK to compile the servlets.

## Example jdk tools : 
for more information check  [Pdf](/Java/ResourcesFiles/BasicJavaTopics/JDK%20Tools%20with%20Names.pdf)  or  [url](https://www.cs.mun.ca/java-api-1.5/tooldocs/index.html)

**General**
- General Information (file structure, classpath, how classes are found, changes)  

**Standard JDK Tools and Utilities**
- Basic Tools (javac, java, javadoc, apt, appletviewer, jar, jdb, javah, javap, extcheck)  
- Security Tools (keytool, jarsigner, policytool, kinit, klist, ktab)  
- Internationalization Tools (native2ascii)
- Remote Method Invocation (RMI) Tools (rmic, rmiregistry, rmid, serialver)
- Java IDL and RMI-IIOP Tools (tnameserv, idlj, orbd, servertool)
- Java Deployment Tools (pack200, unpack200)
- Java Plug-in Tools (htmlconverter)
- Java Web Start Tools (javaws)

**Experimental JDK Tools and Utilities**
- Monitoring and Management Tools (jconsole, jps, jstat, jstatd)
- Troubleshooting Tools (jinfo, jmap, jsadebugd, jstack)


<p align="center">
  <img src="../../PlayGround/ResourcesFiles/Java/Pictures/j2se5.gif?raw=true" alt="JDK">
</p>
<div align="right">

[**Continue Reading ......**](c.JDK/ReadMe.md)  🔬</t> 
</div>


# :school_satchel: Extras



## :ballot_box_with_check: Advanced Topics
 - [`javap`](https://docs.oracle.com/javase/8/docs/technotes/tools/unix/javap.html)
 - [`jstack`](https://docs.oracle.com/javase/8/docs/technotes/tools/unix/jstack.html)
 - `Abstract Syntax Tree`
 - Stack based VM 
 - Heap Memory - Old and Young Generations
 - [ByteCode](https://dzone.com/articles/understanding-jvm-internals#Reasons)




## :exclamation: Sometimes ignorance is not bliss 
:bulb: **`JavaApi`**  : Java application programming interface (API) is a list of all classes that are part of the Java development kit (JDK). It includes all Java packages, classes, and interfaces, along with their methods, fields, and constructors. These prewritten classes provide a tremendous amount of functionality to a programmer.

---

<!-- ## :envelope: Interview Questions -->

:bulb: **`Compilation at JDK Level`**
First, the source ‘.java’ file is passed through the compiler, which then encodes the source code into a machine independent encoding, known as Bytecode. The content of each class contained in the source file is stored in a separate ‘.class’ file. While converting the source code into the bytecode, the compiler follows the following steps:

-   Parse: Reads a set of *.java source files and maps the resulting token sequence into AST (_**Abstract Syntax Tree**_)-Nodes.
-   Enter: Enters symbols for the definitions into the symbol table.
- Process annotations: If Requested, processes annotations found in the specifed compilation units.
- Attribute: Attributes the Syntax trees. This step includes name resolution, type checking and constant folding.
- Flow: Performs dataflow analysis on the trees from the previous step. This includes checks for assignments and reachability.
- Desugar: Rewrites the AST and translates away some syntactic sugar.
- Generate: Generates ‘.Class’ files.


<br>

---

> How can we verify that the JVM successfully executes the class file verification process? How can we verify that various JVMs from various JVM vendors satisfy the JVM specifications? For verification, Oracle provides a test tool, TCK (Technology Compatibility Kit).

<br>

---

:bulb: **`JVM VS Hotspot`**
The definition of what exactly is a Java Virtual Machine is stated in the Java Virtual Machine Specification

The JVM is by definition a virtual machine, i. e. a software machine that simulates what a real machine does. Like a real machine, it has an instruction set, a virtual computer architecture and an execution model. It is capable of running code written with this virtual instruction set, pretty much like a real machine can run machine code.

HotSpot is an **implementation of the JVM concept**. It was originally developed by Sun and now it is owned by Oracle. There are other implementations of the JVM specification, like JRockit, IBM J9, among many others.

---
:bulb: **`3. What Runtime basically mean`**

There are a few components that make up the runtime environment. Not all components are applicable to all environments (e.g. assembler, C++, and C# all have different runtime facilities), but they generally comprise the following:

- The CPU and hardware platform on which the program runs.
- The operating system that runs the program, including device drivers that interface with the hardware.
- _Any interpreter that sits between the program and the operating system_, such as the CLR, **JVM**, shell (for e.g. a Bash script), Perl/Python interpreter, et al.
- Standard libraries available to the language and platform. Certain environments (e.g. embedded) may pare down the relevant standard library due to space concerns.
- Frameworks and other libraries linked into the program either statically or dynamically.

<br>

---

<br>

## :link: :pray: Reference and Our Thanks to these... 

- [**JVM8 Specifications PDF**](/Java/ResourcesFiles/BasicJavaTopics/JVM8_Specifications.pdf)
- https://www.cubrid.org/blog/understanding-jvm-internals/
- https://anturis.com/blog/java-virtual-machine-the-essential-guide/
- https://dzone.com/articles/a-detailed-breakdown-of-the-jvm
- https://github.com/deephacks/awesome-jvm#nix-tools
- https://www.artima.com/insidejvm/ed2/lifetype.html <sup>[*]()[*]()</sup>
- Loading Class : https://www.programcreek.com/2013/01/when-and-how-a-java-class-is-loaded-and-initialized/
- https://www.youtube.com/watch?v=ZBJ0u9MaKtM


<br>

---


## :arrows_counterclockwise: UnWind/Recap
- What Runtime Mean ?
- what is Java Runtime Mean ? 
    - jvm + JavaApi(what are these api/classes - see jdk folder structure)
- What is a VM and JVM
- What are features required to say a vm as jvm ?
- Why many jvm in market ?
- How JVM has Control over the the applications it run ? (sandbox env)
- JVM Architecture at high level
- Deep dive into how JVM works(HotSpot JVM)

<br>


---



## :microscope: More Images

<br>


<p align="center">
  <img width="600" height="800" src="../../PlayGround/ResourcesFiles/Java/Pictures/java-execution-process.png?raw=true" alt="Total in and out of Java program">
</p>


<br>

<p align="center">
  <img width="600" height="800" src="../../PlayGround/ResourcesFiles/Java/Pictures/jvm-SubSystems_1.jpg?raw=true" alt="Inside JVM">
  
  
<br>

