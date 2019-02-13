
# ClassLoaders

## :bulb: java.lang.ClassNotFoundException.



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
- JVM : http://mihaimoldovan.com/download/Inside-Java-Virtual-Machine.pdf