

Table of Contents
=================

   * [Introduction to Class Loaders](#introduction-to-class-loaders)
   * [What does it mean by saying "load a class"?](#what-does-it-mean-by-saying-load-a-class)
   * [ClassLoader Principles](#classloader-principles)
      * [a. <strong>delegation :</strong>](#a-delegation-)
      * [b. <strong>visibility :</strong>](#b-visibility-)
      * [c. <strong>uniqueness :</strong>](#c-uniqueness-)
   * [<g-emoji class="g-emoji" alias="soon" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f51c.png">🔜</g-emoji> Create own class loader](#soon-create-own-class-loader)
   * [<g-emoji class="g-emoji" alias="school_satchel" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f392.png">🎒</g-emoji> Memory out of Concepts](#-memory-out-of-concepts)
      * [<g-emoji class="g-emoji" alias="ballot_box_with_check" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2611.png">☑️</g-emoji> Advanced Topics](#️-advanced-topics)
      * [<g-emoji class="g-emoji" alias="exclamation" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2757.png">❗️</g-emoji> Sometimes ignorance is not bliss](#️-sometimes-ignorance-is-not-bliss)
      * [<g-emoji class="g-emoji" alias="link" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f517.png">🔗</g-emoji> <g-emoji class="g-emoji" alias="pray" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f64f.png">🙏</g-emoji> Reference and Our Thanks to these...](#--reference-and-our-thanks-to-these)
      * [<g-emoji class="g-emoji" alias="arrows_counterclockwise" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f504.png">🔄</g-emoji> UnWind/Recap](#-unwindrecap)
      * [<g-emoji class="g-emoji" alias="microscope" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f52c.png">🔬</g-emoji> More Images](#-more-images)
      


# Introduction to Class Loaders




The **`Class loader`** concept, one of the cornerstones of the Java virtual machine, describes the behavior of converting a named class into the bits responsible for implementing that class. Because class loaders exist, the Java run time does not need to know anything about files and file systems when running Java programs.


Java classes aren’t loaded into memory all at once, but when required by an application. This is where class loaders come into the picture. They are responsible for loading classes into memory.

In this tutorial, we’re going to talk about different types of built-in class loaders, how they work and an introduction to our own custom implementation.


# What does it mean by saying "load a class"?

Source Code in C/C++ is compiled to native machine code first and then it requires a linking step after compilation. What the linking does is combining source files from different places and form an executable program. Java does not do that. The linking-like step for Java is done when they are loaded into JVM.

Different JVMs load classes in different ways, but the basic rule is only loading classes when they are needed. If there are some other classes that are required by the loaded class, they will also be loaded. **```The loading process is recursive```**.


loading policies is handled by a ClassLoader. The following example shows how and when a class is loaded for a simple program.

**TestLoader.java**
```
public class TestLoader {
  public static void main(String[] args) {
    System.out.println("test");
  }
}
```


**A.java**

```
public class A {
  public void method(){
    System.out.println("inside of A");
  }
}
```


By running the following command, we can get information about each class loaded. The "**```-verbose:class```**" option displays information about each class loaded.


```
java -verbose:class -classpath /Laughing-buddha/Java/1.JVM/src TestLoader
```



**Part of Output**
```
[Loaded sun.launcher.LauncherHelper$FXHelper from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
[Loaded java.lang.Class$MethodArray from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
[Loaded java.lang.Void from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
test
[Loaded java.lang.Shutdown from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
[Loaded java.lang.Shutdown$Lock from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
```


**Now If we change TestLoader.java to:**

```
public class TestLoader {
  public static void main(String[] args) {
    System.out.println("test");
    A a = new A();
    a.method();
  }
}
```
And run the same command again, the output would be:


```
[Loaded sun.launcher.LauncherHelper$FXHelper from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
[Loaded java.lang.Class$MethodArray from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
[Loaded java.lang.Void from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
test
[Loaded A from file:/Users/charankumar/Documents/PushGitSpace/Laughing-buddha/Java/1.JVM/src/]
inside of A
[Loaded java.lang.Shutdown from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
[Loaded java.lang.Shutdown$Lock from /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/jre/lib/rt.jar]
```


A.class is loaded only when it is used. In summary, a class is loaded:

- when the new bytecode is executed. For example, SomeClass f = new SomeClass();
- when the bytecodes make a static reference to a class. For example, System.out.



<!-- # What class loaders do /work 
Classes are introduced into the Java environment when they are referenced by name in a class that is already running. There is a bit of magic that goes on to get the first class running (which is why you have to declare the main() method as static, taking a string array as an argument), but once that class is running, future attempts at loading classes are done by the class loader. -->

<br>


<p align="center">
  <img width="600" height="350" src="/Java/ResourcesFiles/Pictures/ClassLoader_Internals.jpg?raw=true" alt="ClassLoader internals">
</p>

<br>


# Types of Built-in Class Loaders

Let’s start by learning how different classes are loaded using various class loaders using a simple example:
```
public void printClassLoaders() throws ClassNotFoundException {
 
    System.out.println("Classloader of this class:"
        + PrintClassLoader.class.getClassLoader());
 
    System.out.println("Classloader of Logging:"
        + Logging.class.getClassLoader());
 
    System.out.println("Classloader of ArrayList:"
        + ArrayList.class.getClassLoader());
}
```

When executed the above method prints:


```
Class loader of this class:sun.misc.Launcher$AppClassLoader@18b4aac2
Class loader of Logging:sun.misc.Launcher$ExtClassLoader@3caeaf62
Class loader of ArrayList:null
```

As we can see, there are three different class loaders here; **application, extension, and bootstrap** (displayed as null).

The **application** class loader loads the class where the example method is contained. An application or system class loader loads our own files in the classpath.

Next, the **extension** one loads the Logging class. Extension class loaders load classes that are an extension of the standard core Java classes.

Finally, the **bootstrap** one loads the ArrayList class. A bootstrap or primordial class loader is the parent of all the others.

> However, we can see that the last out, for the ArrayList it displays null in the output. This is because the bootstrap class loader is written in native code, not Java – so it doesn’t show up as a Java class. Due to this reason, the behavior of the bootstrap class loader will differ across JVMs.




# ClassLoader Principles 
ClassLoader in Java works on three principle :

* **delegation**
* **visibility** 
* **uniqueness** 



## a. **delegation :**
Delegation principle forward request of class loading to parent class loader and only loads the class, if parent is not able to find or load class

When a class is loaded in Java, when its needed. Suppose you have an application specific class called Abc.class, first request of loading this class will come to Application ClassLoader which will delegate to its parent Extension ClassLoader which further delegates to **_Primordial_** or Bootstrap class loader. 

Primordial will look for that class in rt.jar and since that class is not there, request comes to Extension class loader which looks on jre/lib/ext directory and tries to locate this class there, if class is found there than Extension class loader will load that class and Application class loader will never load that class but if its not loaded by extension class-loader than Application class loader loads it from Classpath in Java. Remember Classpath is used to load class files while PATH is used to locate executable like javac or java command.



## b. **visibility :**
Visibility principle allows child class loader to see all the classes loaded by parent ClassLoader, but parent class loader can not see classes loaded by child.


According to visibility principle, Child ClassLoader can see class loaded by Parent ClassLoader but vice-versa is not true. Which mean if class Abc is loaded by Application class loader than trying to load class ABC explicitly using extension ClassLoader will throw either **```java.lang.ClassNotFoundException```**<sup>[:bulb:](/Java/1.JVM/MiscellaneousExplained.md#)</sup>. as shown in below Example

```
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Java program to demonstrate How ClassLoader works in Java,
 * in particular about visibility principle of ClassLoader.
 */

public class ClassLoaderTest {
  
    public static void main(String args[]) {
        try {          
            //printing ClassLoader of this class
            System.out.println("ClassLoaderTest.getClass().getClassLoader() : "
                                 + ClassLoaderTest.class.getClassLoader());

          
            //trying to explicitly load this class again using Extension class loader
            Class.forName("test.ClassLoaderTest", true 
                            ,  ClassLoaderTest.class.getClassLoader().getParent());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ClassLoaderTest.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
```

**OutPut :**

```
ClassLoaderTest.getClass().getClassLoader() : sun.misc.Launcher$AppClassLoader@6d06d69c
Feb 11, 2019 6:59:17 AM ClassLoaderTest main
SEVERE: null
java.lang.ClassNotFoundException: test.ClassLoaderTest
  at java.net.URLClassLoader.findClass(URLClassLoader.java:381)
  at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
  at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
  at java.lang.Class.forName0(Native Method)
  at java.lang.Class.forName(Class.java:348)
  at ClassLoaderTest.main(ClassLoaderTest.java:21)
```




## c. **uniqueness :**
Uniqueness principle allows to load a class exactly once, which is basically achieved by delegation and ensures that child ClassLoader doesn't reload the class already loaded by parent.  



Correct understanding of class loader is must to resolve issues like NoClassDefFoundError in Java and java.lang.ClassNotFoundException, which are related to class loading. 



[Click here for More reading](https://javarevisited.blogspot.com/2012/12/how-classloader-works-in-java.html)



<br>


# :soon: Create own class loader
- https://www.javaworld.com/article/2077260/learn-java/learn-java-the-basics-of-java-class-loaders.html
- https://www.baeldung.com/java-classloaders
- https://www.journaldev.com/349/java-classloader

<br>

:envelope:



- Class Loaders
    - https://www.ibm.com/developerworks/library/j-dyn0429/
    - https://www.baeldung.com/java-classloaders
- Initialisers : https://www.programcreek.com/2011/10/java-class-instance-initializers



# 🎒 Memory out of Concepts
## ☑️ Advanced Topics
## ❗️ Sometimes ignorance is not bliss
## 🔗 🙏 Reference and Our Thanks to these...
## 🔄 UnWind/Recap
## 🔬 More Images