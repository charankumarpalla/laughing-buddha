Table of Contents
=================
   * [Introduction](#introduction)
      * [Advantages of Serialization](#advantages-of-serialization)
      * [How to Make a Java Class Serializable?](#how-to-make-a-java-class-serializable)
      * [Points to remember](#points-to-remember)
   * [serialVersionUID](#serialversionuid)
      * [What Is the serialVersionUID?](#what-is-the-serialversionuid)
      * [Why serialVersionUID?](#why-serialversionuid)
      * [How serialVersionUID is generated?](#how-serialversionuid-is-generated)
      * [How serialVersionUID works?](#how-serialversionuid-works)
      * [Demonstrate serialVersionUID](#demonstrate-serialversionuid)
   * [Reference](#reference)


#   Introduction

When you create a class, you may create an object for that particular class and once we execute/terminate the program, the object is destroyed by itself via the garbage collector thread.

_What happens if you want to call that class without re-creating the object?_ In those cases, what you do is use the serialization concept by converting data into a byte stream.

*Object Serialization* is a process used to convert the state of an object into a byte stream, which can be persisted into disk/file or sent over the network to any other running Java virtual machine. The reverse process of creating an object from the byte stream is called *deserialization*. The byte stream created is platform independent. So, the object serialized on one platform can be deserialized on a different platform.


>   Serialization is a mechanism of converting the state of an object into a byte stream. Deserialization is the reverse process where the byte stream is used to recreate the actual Java object in memory. This mechanism is used to persist the object.


<p align="center"> 
    <img src="../ResourcesFiles/Concepts/serialize-deserialize-java_a.png" alt="serialize-deserialize">
 </p>

 `The byte stream created is platform independent. So, the object serialized on one platform can be deserialized on a different platform.`


 ## Advantages of Serialization
1. To save/persist state of an object.
2. To travel an object across a network.

<p align="center"> 
    <img src="../ResourcesFiles/Concepts/serialize-deserialize-java_b.jpg" alt="serialize-deserialize">
 </p>



## How to Make a Java Class Serializable?
Serializability can be enabled in your Java class by implementing the java.io.Serializable interface. **Serializable is a marker interface** (has no data member and method). It is used to “mark” java classes so that objects of these classes may get certain capability. The serialization interface has no methods or fields and serves only to identify the semantics of being serializable.

Other examples of marker interfaces are:- Cloneable and Remote.

Only the objects of those classes can be serialized which are implementing java.io.Serializable interface.


The _**ObjectOutputStream**_ class contains writeObject() method for serializing an Object.
The writeObject method is responsible for writing the state of the object for its particular class so that the corresponding readObject method can restore it. 
```
public final void writeObject(Object obj)
                       throws IOException
```
The _**ObjectInputStream**_ class contains readObject() method for deserializing an object.
```
public final Object readObject()
                  throws IOException,
               ClassNotFoundException
```


## Points to remember
1. **Only non-static data members are saved via Serialization process.**
2. If a parent class has implemented Serializable interface then child class doesn’t need to implement it but vice-versa is not true.
3. Static data members and transient data members are not saved via Serialization process. So, if you don’t want to save value of a non-static data member then make it *transient*.
4. Constructor of object is never called when an object is deserialized.
5. Associated objects must be implementing Serializable interface.

# serialVersionUID
## What Is the serialVersionUID?

**_SerialVersionUID_** is an ID, which is stamped on an object when it gets serialized . 

The Serialization runtime associates a version number with each Serializable class called a SerialVersionUID, which is used during Deserialization to verify that sender and reciever of a serialized object have loaded classes for that object which are compatible with respect to serialization. 


If the reciever has loaded a class for the object that has different UID than that of corresponding sender’s class, the Deserialization will result in an `InvalidClassException`. A Serializable class can declare its own UID explicitly by declaring a field name.

_**It must be static, final and of type long.**_
> ANY-ACCESS-MODIFIER static final long serialVersionUID=42L;

<!-- If a serializable class doesn’t _explicitly_ declare a serialVersionUID, then the serialization runtime will calculate a default one for that class based on various aspects of class like usually with the hashcode of the object, as described in Java Object Serialization Specification. 

However it is strongly recommended that all serializable classes explicitly declare serialVersionUID value, since its computation is highly sensitive to class details that may vary depending on compiler implementations, any change in class or using different id may affect the serialized data.

It is also recommended to use private modifier for UID since it is not useful as inherited member. -->


## Why serialVersionUID?

Lets start with annoying warning message you get in your IDE when you declare a class as Serializable.

The serializable class SerialDemo does not declare a static final serialVersionUID field of type long

Most of us used to ignore this message as we always do for a warning. My general note is, always pay attention to the java warning messages. It will help you to learn a lot of fundamentals.

<p align="center"> 
    <img src="../ResourcesFiles/Concepts/serialize-deserialize-java_c_SerialVersionUID.png" alt="serialize-deserialize-java_c_SerialVersionUID">
 </p>

serialVersionUID is a must in serialization process. But it is optional for the developer to add it in java source file. If you are not going to add it in java source file, serialization runtime will generate a serialVersionUID and associate it with the class. The serialized object will contain this serialVersionUID along with other data.

Even though serialVersionUID is a static field, it gets serialized along with the object. This is one exception to the general serialization rule that, “static fields are not serialized”.


## How serialVersionUID is generated?

serialVersionUID is a 64-bit hash of the class name, interface class names, methods and fields. Serialization runtime generates a serialVersionUID if you do not add one in source.

It is advised to have serialVersionUID as unique as possible. Thats why the java runtime chose to have such a complex algorithm to generate it.

If you want help in generating it, jdk tools provides a tool named serialver. Use *`serialver -show`* to start the gui version of the tool as shown below.


## How serialVersionUID works?
When an object is serialized, the serialVersionUID is serialized along with the other contents.

Later when that is deserialized, the serialVersionUID from the deserialized object is extracted and compared with the serialVersionUID of the loaded class.

If the numbers do not match then, InvalidClassException is thrown.

If the loaded class is not having a serialVersionUID declared, then it is automatically generated using the same algorithm as before.



## Demonstrate serialVersionUID

- :on:  https://javapapers.com/core-java/serialversionuid-in-java-serialization/


<!-- ### serialver
The serialver is a tool that comes with JDK. It is used to get serialVersionUID number for Java classes.
You can run the following command to get serialVersionUID

>   serialver [-classpath classpath] [-show] [classname…] -->





#   Reference
- https://www.geeksforgeeks.org/serialization-in-java/
- serialversionuid
    -   :heart: https://javapapers.com/core-java/serialversionuid-in-java-serialization/
    -   https://www.mkyong.com/java-best-practices/understand-the-serialversionuid/