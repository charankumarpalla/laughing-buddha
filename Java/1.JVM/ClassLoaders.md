

# Introduction to Class Loaders




The **`Class loader`** concept, one of the cornerstones of the Java virtual machine, describes the behavior of converting a named class into the bits responsible for implementing that class. Because class loaders exist, the Java run time does not need to know anything about files and file systems when running Java programs.


Java classes aren’t loaded into memory all at once, but when required by an application. This is where class loaders come into the picture. They are responsible for loading classes into memory.

In this tutorial, we’re going to talk about different types of built-in class loaders, how they work and an introduction to our own custom implementation.


# What does it mean by saying "load a class"?

Source Code in C/C++ is compiled to native machine code first and then it requires a linking step after compilation. What the linking does is combining source files from different places and form an executable program. Java does not do that. The linking-like step for Java is done when they are loaded into JVM.

Different JVMs load classes in different ways, but the basic rule is only loading classes when they are needed. If there are some other classes that are required by the loaded class, they will also be loaded. The loading process is recursive.


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
package compiler;
public class A {
  public void method(){
    System.out.println("inside of A");
  }
}
```


By running the following command, we can get information about each class loaded. The "**```-verbose:class```**" option displays information about each class loaded.


```
java -verbose:class -classpath /Users/charankumar/Documents/PushGitSpace/Laughing-buddha/Java/1.JVM/src TestLoader
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



We can see the difference highlighted in red. A.class is loaded only when it is used. In summary, a class is loaded:

- when the new bytecode is executed. For example, SomeClass f = new SomeClass();
- when the bytecodes make a static reference to a class. For example, System.out.


<br>

:soon: [Create own class loader](https://www.javaworld.com/article/2077260/learn-java/learn-java-the-basics-of-java-class-loaders.html)

<br>

:envelope:



- https://www.baeldung.com/java-classloaders