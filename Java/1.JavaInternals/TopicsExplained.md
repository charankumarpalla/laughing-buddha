
# ClassLoaders

## :bulb: java.lang.ClassNotFoundException.

## ShutDown Hooks

while we execute  a java class we load all claases and here is where shutdown can be seen



```
java -verbose:class -classpath . HelloWorld

[Opened /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/jre/lib/rt.jar]
[Loaded java.lang.Object from /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/jre/lib/rt.jar]
.
.
.
[Loaded java.lang.Void from /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/jre/lib/rt.jar]
Hello World.
[Loaded java.lang.Shutdown from /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/jre/lib/rt.jar]
[Loaded java.lang.Shutdown$Lock from /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/jre/lib/rt.jar]
```


Shutdown Hooks are a special construct that allows developers to plug in a piece of code to be executed when the JVM is shutting down. This comes in handy in cases where we need to do special clean up operations in case the VM is shutting down.


```
public class ShutDownHook 
{ 
  public static void main(String[] args) 
  { 
  
    Runtime.getRuntime().addShutdownHook(new Thread() 
    { 
      public void run() 
      { 
        System.out.println("Shutdown Hook is running !"); 
      } 
    }); 
    System.out.println("Application Terminating ..."); 
  } 
} 
```

**Output:**

```
Application Terminating ...
Shutdown Hook is running !
```

 - https://www.geeksforgeeks.org/jvm-shutdown-hook-java/


##  Practical Class Loading Examples.

lets see the below flow of class loading 


```
import java.io.File;

public class GetPath {
  public static void main(String[] args) {
    String pwd = new File("").getAbsolutePath();
    System.out.println("Current path : " +pwd);
    System.out.println("Class loader loaindg this file : "+GetPath.class.getClassLoader());
  }
}
```
**Output :**
```
[03:58:30] root: Charan > javac GetPath.java
[03:58:36] root: Charan > java GetPath
Current path : /Users/charankumar/Desktop/Charan
Class loader loaindg this file : sun.misc.Launcher$AppClassLoader@2a139a55
```

Now lets execute a small trick... move this class file to jdk lib/ext folder as a jar

```
[03:58:42] root: Charan > pwd
/Users/charankumar/Desktop/Charan
[04:02:36] root: Charan > cp GetPath.class /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/jre/lib/ext
[04:02:42] root: Charan > jar cvf /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/jre/lib/ext/GetCharanPath.jar GetPath.class
added manifest
adding: GetPath.class(in = 870) (out= 505)(deflated 41%)
[04:03:04] root: Charan > java GetPath
Current path : /Users/charankumar/Desktop/Charan
Class loader loaindg this file : sun.misc.Launcher$ExtClassLoader@15db9742
```


You can see though i'm still in same folder where i ran first example which shows `sun.misc.Launcher$AppClassLoader@2a139a55` as class loader initially now when i run second time its shows `sun.misc.Launcher$ExtClassLoader@15db9742` ..... this is the best example of `delegation` ...first it looks in parent class loader and uses the class in lib/ext

## :bulb:  The Null Classloader
If Java classes are loaded by classloaders, and classloaders are Java components, who loads the first classloader?

The old chicken and egg scenario, rearing its ugly head. If classloaders are Java classes, and Java classes must be loaded onto a JVM to run, how does the first classloader get loaded? It’s a good question.

When a JVM starts up, a special chunk of machine code runs that loads the system classloader. This special hunk of machine code is known as the null classloader.

The machine code that initializes the system classloader is referred to as the null classloader because it is not a Java class at all, as are all other classloaders. The null classloader is platform specific machine instructions that kick off the whole classloading process. 

All classloaders, with the exception of the null classloader, are implemented as Java classes. Something must load the very first Java classloader to get the process started. Loading the first pure Java classloader is the job of the null classloader.



<br>


- https://javarevisited.blogspot.com/2011/06/noclassdeffounderror-exception-in.html



<br>

## :bulb: java-classnotfoundexception-and-noclassdeffounderror
https://www.baeldung.com/java-classnotfoundexception-and-noclassdeffounderror


## :bulb: Primitive Vs Reference Data Types 

 primitive variables and object reference variables differ from each other in multiple ways. The basic difference is that primitive variables store the actual values, whereas reference variables store the addresses of the objects

Predefined by the language and named by a keyword

Total no = 8
```
boolean
char
byte
short
integer
long
float
double
```


Reference/Object Data Types :

* Created using defined constructors of the classes
* Used to access objects
* Default value of any reference variable is null
* Reference variable can be used to refer to any object of the declared type or any compatible type.


## :bulb: Constant Pool

http://blog.jamesdbloom.com/JVMInternals.html#constant_pool


## :bulb: [symbolic reference](https://stackoverflow.com/questions/17406159/symbolic-references-in-java)



## :bulb: 

- http://princekapoor82.blogspot.com/2013/11/java-virtual-machine-loading-linking.html
- https://learning.oreilly.com/library/view/java-in-a/9781449371296/ch11.html




# Best Links for reference
- **JVM** : [PDF](/Java/ResourcesFiles/BasicJavaTopics/Inside-Java-Virtual-Machine.pdf) or [click here](http://mihaimoldovan.com/download/Inside-Java-Virtual-Machine.pdf) 

