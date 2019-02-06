





# **Before jumping into the internals of Java**, 
let’s understand how a Java source file is executed.

1.	We write the Java source code in Simple.Java file using an editor or IDE (integrated development environment) e.g. Eclipse or IntelliJ Idea.
2.	Program has to be compiled into bytecode. Java compiler (javac) compiles the sourcecode to Simple.class file.
3.	This class file can be executed in any platform/OS by JVM (Java virtual machine).
4.	JVM translates bytecode into native machine code which machines can execute.

<br>
![LifeCycle of Java Program](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/What-is-difference-between-JDK-JRE-and-JVM.jpg?raw=true)


* A Java Program in its lifecycle right from source code -> bytecode -> Execution goes below phases
    * **JDK = JRE + tools to develop Java Application.**
    * **JRE = JVM + libraries to run Java application.**
    * **JVM = Class loader system + runtime data area + Execution Engine.**

In layman terms: JDK is grandfather JRE is father and JVM is their son. [i.e. JDK > JRE > JVM ]

# **JDK** = JRE + Development/debugging tools

- It is a bundle of software that you can use to develop Java based applications.
- Java Development Kit is needed for developing java applications.
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
![](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/JDK_JRE_JVM.jpg?raw=true)

<br>


![ ](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/j2se5.gif?raw=true)


# **JRE** = JVM + libraries to run Java application.
![](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/HotSpot%20JVM%20Architecture.png?raw=true)




![ ](https://github.com/charankumarpalla/laughing-buddha/blob/development/Java/ResourcesFiles/Pictures/java-execution-process.png?raw=true)
