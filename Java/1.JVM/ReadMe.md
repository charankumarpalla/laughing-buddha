# **Lets Jump into internals of Java**, 
let’s understand how a Java source file is executed.

<br>

![](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/Java_Source_to_machinelevelcode.jpg?raw=true)


<br>

1.	We write the Java source code in Simple.Java file using an editor or IDE (integrated development environment) e.g. Eclipse or IntelliJ Idea.
2.	Program has to be compiled into bytecode. Java compiler (javac) compiles the sourcecode to Simple.class file.
3.	This class file can be executed in any platform/OS by JVM (Java virtual machine).
4.	JVM translates bytecode into native machine code which machines can execute.

<br>

![LifeCycle of Java Program](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/What-is-difference-between-JDK-JRE-and-JVM.jpg?raw=true)


<br>

![ ](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/java-execution-process.png?raw=true)



* A Java Program in its lifecycle right from source code -> bytecode -> Execution goes below phases
    * **JVM = Class loader system + runtime data area + Execution Engine.**
    * **JRE = JVM + libraries to run Java application.**
    * **JDK = JRE + tools to develop Java Application.**
    
> In layman terms: JDK is grandfather JRE is father and JVM is their son. [i.e. JDK > JRE > JVM ]

<br>


![](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/JDK_JRE_JVM.jpg?raw=true)


<br>


# **JVM** = Class loader system + runtime data area + Execution Engine.


![](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/HotSpot%20JVM%20Architecture.png?raw=true)





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

### Example jdk tools : 
for more information check  [Pdf](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/BasicJavaTopics/JDK%20Tools%20with%20Names.pdf)  or  [url](https://www.cs.mun.ca/java-api-1.5/tooldocs/index.html)

**General**
-	General Information (file structure, classpath, how classes are found, changes)  

**Standard JDK Tools and Utilities**
- Basic Tools (javac, java, javadoc, apt, appletviewer, jar, jdb, javah, javap, extcheck)  
-	Security Tools (keytool, jarsigner, policytool, kinit, klist, ktab)  
-	Internationalization Tools (native2ascii)
-	Remote Method Invocation (RMI) Tools (rmic, rmiregistry, rmid, serialver)
-	Java IDL and RMI-IIOP Tools (tnameserv, idlj, orbd, servertool)
-	Java Deployment Tools (pack200, unpack200)
-	Java Plug-in Tools (htmlconverter)
-	Java Web Start Tools (javaws)

**Experimental JDK Tools and Utilities**
-	Monitoring and Management Tools (jconsole, jps, jstat, jstatd)
-	Troubleshooting Tools (jinfo, jmap, jsadebugd, jstack)      

<br> 

![ ](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/j2se5.gif?raw=true)

<br> 
