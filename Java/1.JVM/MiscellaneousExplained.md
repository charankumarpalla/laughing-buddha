



# ClassLoaders

## :bulb: java.lang.ClassNotFoundException.



## :bulb:  The Null Classloader
If Java classes are loaded by classloaders, and classloaders are Java components, who loads the first classloader?

The old chicken and egg scenario, rearing its ugly head. If classloaders are Java classes, and Java classes must be loaded onto a JVM to run, how does the first classloader get loaded? It’s a good question.

When a JVM starts up, a special chunk of machine code runs that loads the system classloader. This special hunk of machine code is known as the null classloader.

The machine code that initializes the system classloader is referred to as the null classloader because it is not a Java class at all, as are all other classloaders. The null classloader is platform specific machine instructions that kick off the whole classloading process. 

All classloaders, with the exception of the null classloader, are implemented as Java classes. Something must load the very first Java classloader to get the process started. Loading the first pure Java classloader is the job of the null classloader.








## :bulb: 


## :bulb: 


## :bulb: 
